package com.jts.gangstudy.controller;

import java.security.Principal;
import java.sql.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import javax.xml.crypto.Data;

import org.apache.ibatis.annotations.Param;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jts.gangstudy.controller.UserLoginCheck;
import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.exception.PasswordMismatchException;
import com.jts.gangstudy.exception.UserNotFoundException;
import com.jts.gangstudy.service.UserService;

@Controller
public class UserController {
	
//	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@Autowired
	private UserService userService;
	/*
	 * @RequestMapping(value = "/") public String index() { return ""; }
	 */


	

	
	
	Logger logger;

	// ���ã�� ������ �̵�
	@RequestMapping(value = "/findPw", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain; charset=UTF-8")
	public String findPw() throws Exception {
		return "findPw";
	}

	/* ��й�ȣ ã�� - id , email */
	@ResponseBody
	@RequestMapping(value = "findPw_action", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String findPw(@RequestParam("id") String id, @RequestParam("email") String email) throws Exception {
		User findPw = userService.findPw(id, email);
  
		if (findPw != null) {
			System.out.println("## ȸ���� ��й�ȣ��:" + findPw.getPw() + "�Դϴ�.");
			String pw = findPw.getPw();
			return pw;
		}  
		return "";
	}  

	// ȸ�� Ż��
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public ModelAndView deleteUser(@RequestParam("id") String id, @RequestParam("pw") String pw,
			HttpServletRequest request, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView();

		boolean deleteUser = userService.deleteUser(id, pw);  
		if (deleteUser) {
			System.out.println("���� Ż�� ����");     
			deleteUser = true;
			session.invalidate();
		} else {
			System.out.println("Ż�� ����");
			deleteUser = false;
		}

		mv.setViewName("signin");
		mv.addObject("delete", deleteUser);

		return mv;

	}

	
	/* ��й�ȣ ��ġ ���� üũ ���� ���� �����Ҷ� */
	@UserLoginCheck
	@ResponseBody
	@RequestMapping(value = "/pw_Check", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String retirePwCheck(@RequestParam(value = "pw") String pw) {
		boolean truePw = userService.pwMatch(pw);
		if (truePw) {
			System.out.println("## ��й�ȣ ��ġ ����:" + truePw);
			truePw = true;
		} else {
			System.out.println("## ��й�ȣ ����ġ:" + truePw);
			
		}
		return truePw + "";
	}
	
	
	
	
	
	
	// ���� ���� ����
	@UserLoginCheck
	@ResponseBody
	@RequestMapping(value = "/modifyInfo", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String modifyInfo(@RequestParam("name") String name, @RequestParam("phone") String phone,
			@RequestParam(value = "id") String id, @RequestParam("pw") String pw, @RequestParam("email") String email,
			@RequestParam("bod") Date bod, @RequestParam("gender") String gender, HttpSession session,
			HttpServletRequest request) {
		boolean updateUser = userService.updateUser(new User(name, phone, id, pw, email, bod, gender));

		System.out.println(updateUser);
         
		if (updateUser) {
			System.out.println("���� ���� ���� ����.");
			updateUser = true;
		} else {
			System.out.println("���� ���� ���� �ȵ�.");
			updateUser = false;
		}
		session.invalidate();

		return updateUser + "signin";
	}
	


	/* ���̵� �ߺ� üũ */
	@ResponseBody
	@RequestMapping(value = "/duplicate_check", method = RequestMethod.GET, produces = "text/plain; charset=UTF-8")
	public String existeduser(@RequestParam(value = "id") String id) {
		boolean newId = userService.idDuplicateCheck(id);
		if (newId) {
			System.out.println("�ߺ��� ���̵� �Դϴ�.");
			newId = false;
		} else {
			newId = true;
		}
		return newId + "";
	}

	/* �α��� */
	@ResponseBody
	@RequestMapping(value = "/sign_in_action", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String sign_in_action_post(@RequestParam("id") String id, @RequestParam("pw") String pw, HttpSession session,
			Model model, HttpServletRequest request) throws Exception {
		System.out.println(" �α��� ���̵� ��� �� �ޱ�  " + "id:" + id + " pw:" + pw);
		String forwardPath = "";
		// String a= request.getSession().getServletContext().getRealPath("/");
		User user = userService.selectById(id);
		// logger.info("������Ʈ ��� ã��" + a);

		try {
			User signInuser = userService.signIn(id, pw);
			System.out.println();
			if (signInuser != null) {
				System.out.println(" �� �� �� �� ��");
				session.setAttribute("id", id);
				session.setAttribute("name", user.getName());

				session.setAttribute("sUserId", signInuser);
				forwardPath = "true";

			} else {

				forwardPath = "false3";
			}
		} catch (UserNotFoundException e) {
			forwardPath = "false1";
			e.printStackTrace();
		} catch (PasswordMismatchException e) {
			forwardPath = "false2";
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "false";
		}
		return forwardPath;
	}
		/*
		 * if(user.getmRetire()=="off"){ System.out.println("## ��Ȱ��ȭ�� �������� �α��� �� �� ����");
		 * //forwardPath = ���� Ȱ��ȭ â���� ������ }
		 */

	/* �α׾ƿ� */
	@RequestMapping(value = "/logout" , method=RequestMethod.POST)
	public String sign_out_action(HttpSession session, RedirectAttributes reAttributes, HttpServletRequest request) {
		System.out.println(" �� �� �� �� ��.");
		HttpSession sess = request.getSession(false);
		request.getSession(true).invalidate();
		
		
		return "redirect:/";
	}

	/* ������ ���� �˻�,���� ��� */

	@RequestMapping(value = "/admin_cm")
	public ModelAndView userList(@Param(value = "search") String search) {
		ModelAndView mv = new ModelAndView();
		System.out.println("##�˻� ��� ->" + search);
		if (search == null) {
			List<User> userList = userService.UserList();
			mv.addObject("userList", userList);
		} else {
			List<User> findUserList = userService.findUserList(search);
			mv.addObject("userList", findUserList);
		}
		mv.setViewName("admin_cm");
		return mv;

	}

	@RequestMapping(value = "/click_user", method = RequestMethod.GET)
	public String userDetail(Model model, @RequestParam(value = "id") String id) throws Exception {
		logger.info("ȸ�� �� ���� ��ȸ ����.");
		// ��� ��ü ����
		User user = new User();
//		 getMember() ���� memberVO ��ü�� ����

		user = userService.selectById(id);
		// �� ��ü�� �� ����
		model.addAttribute("user", user);

		return "click_user";
	}

	// ȸ������������ ��Ͽ��� Ŭ��������
	@RequestMapping("user/view.do")
	public String clickUser(String id, Model model) throws Exception {
		model.addAttribute("user", userService.selectById(id));

		logger.info("Ŭ���� ���̵�:" + id);

		return "/click_user";
	}

	/*
	 * 
	 * //* ������ ���� ȸ�� ���� ��� *
	 * 
	 * @RequestMapping(value = "/login") public ModelAndView main() { ModelAndView m
	 * = new ModelAndView(); List<User> userList = userService.userBookingList();
	 * 
	 * // m.addObject("data", userService.UserList()); m.addObject("list",
	 * userList); m.setViewName("login"); System.out.println(userList); return m; }
	 * 
	 */
	

	// ȸ������
	@ResponseBody
	@RequestMapping(value = "/signUp", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String signUp(User user) {

		System.out.println(user);
		boolean newUser = userService.insertUser(user);

		if (newUser) {
			newUser = true;
		} else {
			newUser = false;
		}
		System.out.println(newUser);

		return newUser + "";
	}

}
