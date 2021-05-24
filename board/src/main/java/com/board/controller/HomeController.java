package com.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	//소개 페이지 이동
	@RequestMapping(value = "/about")
	public String about(Model model) {
		
		return "about";
	}
	//로그인 페이지이동
	@RequestMapping(value = "/login_page")
	public String login_page(Model model) {
		
		return "login_page";
	}
	//찾아보기(맵 서비스 제공)
	@RequestMapping(value = "/find")
	public String find(Model model) {
		
		return "find";
	}
	//마이페이지
		@RequestMapping(value = "/my_page")
		public String my_page(Model model) {
			
			return "my_page";
		}
}
