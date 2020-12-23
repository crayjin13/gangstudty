package com.jts.gangstudy.controller;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.domain.Booking;
import com.jts.gangstudy.domain.Command;
import com.jts.gangstudy.service.UserService;
import com.jts.gangstudy.service.AdminService;
import com.jts.gangstudy.service.BookingService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;
	@Autowired
	private BookingService bookingService;
	

	
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public ModelAndView showBooks() {
		ModelAndView mav = new ModelAndView("pages/showAllBook");
		List<Booking> books = bookingService.searchAll();
		
		JSONArray array = new JSONArray();
		for(Booking book : books) {
			String name = userService.getUser(book.getUser_no()).getName();
			array.put(
					new JSONArray()
					.put(book.getBook_no())
					.put(name)
					.put(book.getCheck_in().toLocalDate().toString() + " " +
						book.getCheck_in().toLocalTime().toString())
					.put(book.getCheck_out().toLocalDate().toString() + " " +
						book.getCheck_out().toLocalTime().toString())
					.put(book.getPeople() + "명")
					.put(book.getState())
					.put(book.getRequest_dt())
					);
		}

		mav.addObject("books", array);
		return mav;
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public ModelAndView showUsers() {
		ModelAndView mav = new ModelAndView("pages/showAllUser");
		List<User> users = userService.selectAll();
		
		JSONArray array = new JSONArray();
		for(User user : users) {
			array.put(
					new JSONArray()
					.put(user.getUser_no())
					.put(user.getId())
					.put(user.getName())
					.put(user.getPhone())
					.put(user.getEmail())
					.put(user.getBod())
					.put(user.getGender())
					.put(user.getPoints())
					.put(user.getRate())
					.put(user.getNote())
					.put(new JSONObject().put("user_no", user.getUser_no()) )
					);
		}

		mav.addObject("users", array);
		return mav;
	}
	
	// 회원 탈퇴
	@ResponseBody
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public boolean deleteUser(@RequestParam("user_no") Integer user_no) {
		boolean delete = userService.deleteUser(user_no);
		return delete;
	}
	
	// 메모 변경
	@ResponseBody
	@RequestMapping(value = "/noteUser", method = RequestMethod.GET)
	public boolean noteUser(@RequestParam("user_no") Integer user_no, @RequestParam("note") String note) {
		boolean update = userService.updateNote(user_no, note);
		return update;
	}
	
	// 평점 변경
	@ResponseBody
	@RequestMapping(value = "/rateUser", method = RequestMethod.GET)
	public boolean rateUser(@RequestParam("user_no") Integer user_no, @RequestParam("rate") String rate) {
		boolean update = userService.updateRate(user_no, Float.parseFloat(rate));
		return update;
	}
	
	@ResponseBody
	@RequestMapping(value = "/addCommand", method = RequestMethod.GET)
	public void addCommand(HttpServletRequest request, @RequestParam("message") String msg, @RequestParam("time") String time) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("H:mm:ss");
		LocalTime localTime = LocalTime.parse(time, dtf);
		Command command = new Command(msg, localTime);
		adminService.insertCommand(command);
	}

	@ResponseBody
	@RequestMapping(value = "/removeCommand", method = RequestMethod.GET)
	public void removeCommand(HttpServletRequest request, @RequestParam("command_no") String command_no) {
		adminService.deleteCommand(Integer.parseInt(command_no));
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCommands", method = RequestMethod.GET)
	public List<Command> getCommands(HttpServletRequest request) {
		return adminService.selectAll();
	}
	
	// 리모컨 기능
	@ResponseBody
	@RequestMapping(value = "/remote", method = RequestMethod.GET)
	public void remote(HttpServletRequest request, @RequestParam("message") String message) {
		adminService.sendMessage(message);
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView("notyet/testList");
		return mav;
	}
}