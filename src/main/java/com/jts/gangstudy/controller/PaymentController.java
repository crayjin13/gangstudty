package com.jts.gangstudy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jts.gangstudy.service.KakaoPayService;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	private KakaoPayService kakaoPayService;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("serverTime", "/payment/test" );
		return mav;
	}
	@RequestMapping(value = "/oauth", method = RequestMethod.GET)
	public ModelAndView oauth(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("serverTime", kakaoPayService.get() );
		return mav;
	}
}