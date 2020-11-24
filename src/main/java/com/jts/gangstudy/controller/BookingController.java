package com.jts.gangstudy.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jts.gangstudy.domain.Booking;
import com.jts.gangstudy.domain.Payment;
import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.service.BookingService;
import com.jts.gangstudy.service.PaymentService;


@Controller
@RequestMapping("/booking")
public class BookingController {
	private final int room_no = 1;
	
	@Autowired
	private BookingService bookingService;
	@Autowired
	private PaymentService paymentService;
	
	// 30분 간격으로 예약 시간이 되면 상태 변경
	@Scheduled(cron="0 */10 * * * *" )
	public void bookTrigger() {
		LocalDateTime now = LocalDateTime.now().withSecond(0).withNano(0);
		
		// 사용하는 예약의 상태변경
		List<Booking> usingList = bookingService.getTimeBooking(now);
		for(Booking book : usingList) {
			if(now.isEqual(book.getciDateTime()) && book.getState().equals("wait")) {		// 예약시간이 되면 use로 변경
				bookingService.changeState(book, "use");
			} else if(now.isEqual(book.getcoDateTime()) && book.getState().equals("use")) {	// 예약이 종료되면 clear로 변경
				bookingService.changeState(book, "clear");
			}
		}
		
		
		// 결제 미완료 등으로 남겨진 에약의 제거
		List<Booking> unchargeList = bookingService.getStateBooking("uncharge");
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		for(Booking book : unchargeList) {
			LocalDateTime requestDateTime = LocalDateTime.parse(book.getRequest_dt(), formatter).plusHours(9);
			if(book.getciDateTime().isBefore(now)) {										// 지금보다 이전의 예약 제거
				bookingService.removeBook(book);
			} else if(requestDateTime.plusMinutes(10).isBefore(now)) {						// 요청한지 오래된 예약 제거
				System.out.println("request : "+ requestDateTime.plusMinutes(10) + ", " + now);
				bookingService.removeBook(book);
			}
		}
	}
	// 예약가능한 시작시간
	@ResponseBody
	@RequestMapping(value = "/reqStartTime", method = RequestMethod.GET)
	public List<String> reqStartTime(HttpServletRequest request, HttpSession session) {
		User sUserId = (User)session.getAttribute("sUserId");
		String date = request.getParameter("startDate");
		List<Booking> books = bookingService.viewDate(date);
		if(sUserId!=null) {
			Booking book = bookingService.getWaitBooking(sUserId);
			books.remove(book);
		}
		List<String> times = bookingService.getUnbookedTimeList(date, books);
		return times;
	}
	// 예약가능한 종료시간
	@ResponseBody
	@RequestMapping(value = "/reqEndTime", method = RequestMethod.GET)
	public List<String> reqEndTime(HttpServletRequest request, HttpSession session) {
		User sUserId = (User)session.getAttribute("sUserId");
		String startTime = request.getParameter("startTime");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		List<Booking> books = bookingService.viewDate(endDate);
		if(sUserId!=null) {
			Booking book = bookingService.getWaitBooking(sUserId);
			books.remove(book);
		}
		List<String> times = bookingService.getEndTimes(books, startDate, startTime, endDate);
		return times;
	}
	
	// booking shop page - 결제 직전 페이지
	@UserLoginCheck
	@RequestMapping(value = "/make", method = RequestMethod.GET)
	
	public ModelAndView makeBook(HttpServletRequest request, HttpSession session,
			@RequestParam("startDateInput") String startDate, 	@RequestParam("startTimeInput") String startTime,
			@RequestParam("endDateInput") String endDate, 		@RequestParam("endTimeInput") String endTime,
			@RequestParam("userCountInput") String people) {
		ModelAndView mav = new ModelAndView("pages/makecart");
		User sUserId = (User)session.getAttribute("sUserId");
		// check a existing booking
		sUserId.getUser_no();
		Booking book = bookingService.getWaitBooking(sUserId);
		if(book!=null) {
			mav.setViewName("redirect:/booking/check");
		}
		// check a uncharge booking
		List<Booking> books = bookingService.getUserBooking(sUserId, "uncharge");
		for(Booking item : books) {
			bookingService.removeBook(item);
		}
		
		// registry booking in session
		book = new Booking();
		book.setCheck_in(startDate, startTime);
		book.setCheck_out(endDate, endTime);
		book.setPeople(people);
		book.setUser_no(sUserId.getUser_no());
		book.setRoom_no(room_no);
		book.setState("uncharge");
		session.setAttribute("book", book);
		
		// mav add
		String startDateTime = book.getFormattedCI("M월 d일 H시 mm분");
		String endDateTime = book.getFormattedCO("M월 d일 H시 mm분");
		String timeInterval = bookingService.getTimeInterval(book);
		int chargePerPeople = bookingService.getCharge(book) / book.getPeople();
		int point = Integer.parseInt(sUserId.getPoints());
		
		mav.addObject("startDateTime", startDateTime)
		.addObject("endDateTime", endDateTime)
		.addObject("timeInterval", timeInterval)
		.addObject("chargePerPeople", chargePerPeople)
		.addObject("userCount", people)
		.addObject("point", point)
		.addObject("charge", chargePerPeople*Integer.parseInt(people) - point);
		return mav;
	}

	// booking shop page - 결제 요청 시
	@UserLoginCheck
	@ResponseBody
	@RequestMapping(value = "/make", method = RequestMethod.POST)
	public String bookSubmit(HttpServletRequest request, HttpSession session,
			@RequestParam("people") String peoples, @RequestParam("point") String point) {
		User sUserId = (User)session.getAttribute("sUserId");
		Booking book = (Booking)session.getAttribute("book");
		// validation check
		int people = Integer.parseInt(peoples);
		if(people < 1 || people > 6) {
			return "?people=error";
		}

		int usePoint = Integer.parseInt(point);
		int maxPoint = Integer.parseInt(sUserId.getPoints());
		if(usePoint > maxPoint || usePoint < 0) {
			return "?point=error";
		}
		if(bookingService.allowsBooking(book) == false) {
			return "?date=error";
		}
		// point로 전액 결제 시 결제요금 청구 안함.
		
		// insert DB
		book.setPeople(people);
		String result = bookingService.insertBook(book);
		if(result.equals("duplicate")) {
			return "?booking=duplicate";
		}
		
		// session registry
		int charge = bookingService.getCharge(book) - usePoint;
		Payment payment = new Payment();
		payment.setAmount(charge);
		payment.setPoint(usePoint);
		payment.setBook_no(book.getBook_no());
		payment.setState("ready");
		session.setAttribute("payment", payment);
		
		// 결제 페이지(선택페이지)로 이동
		return "/payment/kakaopay";
	}
	
	// booking order page - 결제 확인 페이지
	@UserLoginCheck
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public ModelAndView bookCheck(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("pages/order-details");
		
		User sUserId = (User)session.getAttribute("sUserId");
		Booking book = bookingService.getWaitBooking(sUserId);
		
		// payment.getPoint();
		
		if(book==null) {
			mav.addObject("hasBooking", "false");
		} else {
			// book_no와 연결되는 payment를 얻는다.
			Payment payment = paymentService.selectPayment(book);
			
			mav.addObject("hasBooking", "true")
			.addObject("start", book.getFormattedCI("M월 d일 H시 mm분"))
			.addObject("end", book.getFormattedCO("M월 d일 H시 mm분"))
			.addObject("people", book.getPeople())
			.addObject("timeInterval", bookingService.getTimeInterval(book))
			.addObject("hourPrice", bookingService.getHourPrice())
			.addObject("totalCharge", bookingService.getCharge(book))
			.addObject("usedpoint", payment.getPoint());
		}
		mav.addObject("name", sUserId.getName());
		return mav;
	}
		
	// booking modify page - 결제 수정 페이지
	@UserLoginCheck
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public ModelAndView editBook(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("pages/modify");
		User sUserId = (User)session.getAttribute("sUserId");
		Booking book = bookingService.getWaitBooking(sUserId);
		
		if(book == null) {	// 수정 불가능한 경우
			mav.setViewName("?booking=null");
		} else {			// 수정 가능한 경우
			Payment payment = paymentService.selectPayment(book);
			
			int charge = payment.getAmount();
			int usedPoint = payment.getPoint();

			// mav add
			String timeInterval = bookingService.getTimeInterval(book);
			
			mav.addObject("startDateInput", book.getciDate())
			.addObject("startTimeInput", book.getciTime())
			.addObject("endDateInput", book.getcoDate())
			.addObject("endTimeInput", book.getcoTime())
			.addObject("people", book.getPeople())
			.addObject("timeInterval", timeInterval)
			.addObject("charge", charge)
			.addObject("usedPoint", usedPoint);
		}
		
		return mav;
	}
	
	// booking modify page - 결제 직전 페이지
	@UserLoginCheck
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public ModelAndView editSubmit(HttpServletRequest request, HttpSession session,
			@RequestParam("startDateInput") String startDate, @RequestParam("endDateInput") String endDate,
			@RequestParam("startTimeInput") String startTime, @RequestParam("endTimeInput") String endTime,
			@RequestParam("people") String people) {
		ModelAndView mav = new ModelAndView("pages/modifycart");
		User sUserId = (User)session.getAttribute("sUserId");
		Booking oldBook = bookingService.getWaitBooking(sUserId);
		Booking newBook = new Booking();
		newBook.setUser_no(sUserId.getUser_no());
		newBook.setRoom_no(room_no);
		newBook.setCheck_in(startDate, startTime);
		newBook.setCheck_out(endDate, endTime);
		newBook.setPeople(people);
		newBook.setState("uncharge");
		
		if(newBook.getciDateTime().isEqual(oldBook.getciDateTime()) &&
			newBook.getcoDateTime().isEqual(oldBook.getcoDateTime()) &&
			newBook.getPeople() == oldBook.getPeople()) {
			// current == new
			mav.setViewName("redirect:/booking/check");
			return mav;
		}
		// registry booking in session
		session.setAttribute("book", newBook);
		
		// 요금을 더받아야 하는지 덜받아야 하는지 확인
		Payment currentPayment = paymentService.selectPayment(oldBook);
		int charge = bookingService.getCharge(newBook) - currentPayment.getAmount();
		int point = Integer.parseInt(sUserId.getPoints());
		
		// mav add
		String startDateTime = newBook.getFormattedCI("M월 d일 H시 mm분");
		String endDateTime = newBook.getFormattedCO("M월 d일 H시 mm분");
		String timeInterval = bookingService.getTimeInterval(newBook);
		
		mav.addObject("startDateTime", startDateTime)
		.addObject("endDateTime", endDateTime)
		.addObject("timeInterval", timeInterval)
		.addObject("userCount", people)
		.addObject("point", point)
		.addObject("charge", charge);
		return mav;
	}
	
	@UserLoginCheck
	@RequestMapping(value = "/change", method = RequestMethod.POST)
	public String bookChangeBridge(HttpServletRequest request, HttpSession session, @RequestParam("point") String point) {
		User sUserId = (User)session.getAttribute("sUserId");
		Booking oldBook = bookingService.getWaitBooking(sUserId);
		Booking newBook = (Booking)session.getAttribute("book");
		session.removeAttribute("book");
		
		// validation check
		int usePoint = Integer.parseInt(point);
		int maxPoint = Integer.parseInt(sUserId.getPoints());
		if(usePoint > maxPoint || usePoint < 0) {
			return "?point=error";
		}
		
		// 결제 요청 브릿지
		int charge = bookingService.getCharge(newBook) - paymentService.selectPayment(oldBook).getAmount();
		if(usePoint > charge) { usePoint = charge; }
		session.setAttribute("usePoint", usePoint);
		session.setAttribute("oldBook", oldBook);
		session.setAttribute("newBook", newBook);
		if(charge == 0) {			// 우연히도 추가나 취소 요금이 없는 경우		// point로 전액 결제 시 결제요금 청구 안함.
			bookingService.changeState(oldBook, "cancel");
			bookingService.insertBook(newBook);
			System.out.println("nothing to payment");
			return "redirect:/booking/check";
		} else if(charge > 0) {		// 추가 요금을 받아야 하는 경우
			System.out.println("cancel and booking");
			return "redirect:/payment/cancelAndBooking";
		} else {					// 취소 요금을 줘야 하는 경우
			System.out.println("cancel and change");
			return "redirect:/payment/cancelAndChange";
		}
	}
	
	@UserLoginCheck
	@RequestMapping(value = "/cancelAndBooking", method = RequestMethod.GET)
	public String cancelAndBooking(HttpServletRequest request, HttpSession session) {
		Booking oldBook = (Booking)session.getAttribute("oldBook");
		Booking newBook = (Booking)session.getAttribute("newBook");
		int usePoint = (int)session.getAttribute("usePoint");

		// 기존 결제 취소 성공시, 기존 예약을 취소로 변경
		bookingService.changeState(oldBook, "cancel");
		// 새로운 예약을 대기시켜 놓는다.
		bookingService.insertBook(newBook);
		
		// session registry
		int charge = bookingService.getCharge(newBook) - usePoint;
		Payment payment = new Payment();
		payment.setAmount(charge);
		payment.setPoint(usePoint);
		payment.setBook_no(newBook.getBook_no());
		payment.setState("ready");
		session.setAttribute("payment", payment);
		session.setAttribute("book", newBook);

		session.removeAttribute("oldBook");
		session.removeAttribute("newBook");
		session.removeAttribute("usePoint");
		// 새 예약에 대한 요청
		return "redirect:/payment/kakaopay";
	}
	
	@UserLoginCheck
	@RequestMapping(value = "/cancelAndChange", method = RequestMethod.GET)
	public String cancelAndChange(HttpServletRequest request, HttpSession session) {
		Booking oldBook = (Booking)session.getAttribute("oldBook");
		Booking newBook = (Booking)session.getAttribute("newBook");
		int usePoint = (int)session.getAttribute("usePoint");
		String tid = (String)session.getAttribute("tid");
		String pay_type = (String)session.getAttribute("pay_type");

		// 결제 취소 성공시
		// 기존 예약을 취소로 변경
		bookingService.changeState(oldBook, "cancel");

		// 새 예약 등록
		newBook.setState("wait");
		bookingService.insertBook(newBook);
		
		// 해당 결제 정보 저장
		Payment payment = new Payment();
		payment.setAmount(bookingService.getCharge(newBook));
		payment.setPoint(0); // 취소시 사용된 포인트를 돌려줘야 할지도?
		payment.setPg_name("KakaoPay");
		payment.setTid(tid);
		payment.setPay_type(pay_type);
		payment.setState("paid");
		payment.setBook_no(newBook.getBook_no());
		paymentService.insertPayment(payment);
		

		session.removeAttribute("oldBook");
		session.removeAttribute("newBook");
		session.removeAttribute("usePoint");
		session.removeAttribute("tid");
		session.removeAttribute("pay_type");
		// 변경 결과 페이지
		return "redirect:/booking/check";
	}
}
