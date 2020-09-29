package com.jts.gangstudy.controller;

import java.security.Principal;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.annotations.Param;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.jts.gangstudy.controller.UserLoginCheck;
import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.exception.PasswordMismatchException;
import com.jts.gangstudy.exception.UserNotFoundException;
import com.jts.gangstudy.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	/*
	 * @RequestMapping(value = "/") public String index() { return ""; }
	 */
	
	@RequestMapping(value ="/logOn")
	public String logOn() {
		return "logOn";
	}
	
	
	Logger logger;
	
	
	
	@RequestMapping(value="/deleteUser", method=RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public ModelAndView deleteUser(@RequestParam("id")String id, @RequestParam("pw") String pw, HttpServletRequest request) {
		
		
		ModelAndView mv = new ModelAndView();
		
		boolean deleteUser = userService.deleteUser(id, pw);
		
			
		mv.addObject("delete", deleteUser);
		
		
		return  mv;
		
		
		
	}
	
	
	
	
	//유저 정보 수정
	@UserLoginCheck
	@ResponseBody
	@RequestMapping(value="/modifyInfo", method=RequestMethod.POST, produces="text/plain; charset=UTF-8")
	public String modifyInfo(@RequestParam("name")String name,
							@RequestParam("phone")String phone,
							 @RequestParam(value="id")String id,
							 @RequestParam("pw")String pw,
							 @RequestParam("email")String email,
							 @RequestParam("bod")String bod,
							 @RequestParam("gender")String gender,HttpSession session,
							 HttpServletRequest request) {
		boolean updateUser = userService.updateUser(new User(name, phone, id, pw,email,bod,gender));
		
		System.out.println(updateUser);
		
		if(updateUser) {
			System.out.println("유저 정보 수정 성공.");
			updateUser=true;
		}else {
			System.out.println("유저 정보 수정 안됨.");
			updateUser=false;
		}
		session.invalidate();
		
		return updateUser+"userInfo";
	}
	
	
	
	
	
	
	
	
	
	
	/*아이디 중복 체크*/
	@ResponseBody
	@RequestMapping(value="/duplicate_check", method= RequestMethod.GET, produces="text/plain; charset=UTF-8")
	public String existeduser(@RequestParam(value = "id") String id) {
		boolean newId = userService.idDuplicateCheck(id);
		if(newId) {
			System.out.println("중복된 아이디 입니다.");
			newId = false;
		}else {
			newId = true;
		}
		return newId+"";
	}
	
	
	
	
	
	/*비밀번호 일치 여부 체크 유저 정보 수정할때 */
	@UserLoginCheck
	@ResponseBody
	@RequestMapping(value="/pw_Check",method= RequestMethod.POST, produces="text/plain; charset=UTF-8")
	public String retirePwCheck(@RequestParam(value="pw")String pw) {
		boolean truePw = userService.pwMatch(pw);
		if(truePw) {
			System.out.println("## 비밀번호 일치 여부:"+truePw);
			truePw = true;
		}else {
			System.out.println("## 비밀번호 일치 여부:"+truePw);
		}
		return truePw+"";
	}
	

	

	/* 로그인 */
	@ResponseBody
	@RequestMapping(value = "/sign_in_action", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public String sign_in_action_post(@RequestParam("id") String id, @RequestParam("pw") String pw,
			HttpSession session, Model model, HttpServletRequest request) {
		System.out.println(" 로그인 아이디 비번 값 받기  " + "id:" + id + " pw:" + pw);
		String forwardPath = "";
		// String a= request.getSession().getServletContext().getRealPath("/");
		User user = userService.selectById(id);
		// logger.info("프로젝트 경로 찾기" + a);

		try {
			User signInuser = userService.signIn(id, pw);
			System.out.println();
			if (signInuser != null) {
				System.out.println(" 로 그 인 성 공");
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
		/*
		 * if(user.getmRetire()=="off"){
		 * System.out.println("## 비활성화된 계정으로 로그인 할 수 없음"); //forwardPath = 계정 활성화 창으로
		 * 포워딩 }
		 */
		return forwardPath;
	}
	
	
	/*로그아웃*/
	@RequestMapping(value="/logout")
	public String sign_out_action(HttpSession session) {
		System.out.println(" 로 그 아 웃 됨.");
		session.invalidate();
		return "/home";
	}
	
	

	// 유저 목록 (
	@RequestMapping(value = "/login")
	public ModelAndView main() {
		ModelAndView m = new ModelAndView();
		List<User> userList = userService.UserList();

		// m.addObject("data", userService.UserList());
		m.addObject("list", userList);
		m.setViewName("login");
		System.out.println(userList);
		return m;
	}
	
	
	//유저 자신의 정보 가져오기 
	@UserLoginCheck
	@RequestMapping(value="/userInfo")
	public ModelAndView userInfo(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		
		
		
		mv.setViewName("userInfo");
		
		return mv;
	}
	
	

	
	
	
	
	//회원상세정보조희 목록에서 클릭했을떄 
	public String myInfo(String id, Model model) {
		model.addAttribute("user",userService.userInfo(id));
		
		logger.info("클릭한 아이디:"+id);
		
		return "userinfo";
	}
		
	
		
		

	// 회원가입
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
