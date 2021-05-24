package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.model.Member;
import com.board.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	
	//회원가입 GET
	@RequestMapping(value = "/register" , method = RequestMethod.GET)
	public void getRegister() throws Exception {
		Logger.info("get register");
	}
	
	//회원가입 POST
	@RequestMapping(value = "/register" , method = RequestMethod.POST)
	public String postRegister(Member member) throws Exception {
		Logger.info("post register");
		
		int result = service.idChk(member);
		//입력된 아이디가 이미 있다면 다시 회원가입 페이지로 돌아가고
		//없다면 register로
		try {
			if(result == 1) {
				return "/member/register";
			} else if (result == 0) {
				service.register(member);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
		return "redirect:/";
		/*
		service.register(member);
		
		return "redirect:/";
		*/
	}
	
	//아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk" , method = RequestMethod.POST)
	public int idChk(Member member) throws Exception {
		int result = service.idChk(member);
		return result;
	}
	
	//로그인
	@RequestMapping(value = "/login" , method = RequestMethod.POST)
	public String login(Member member , HttpServletRequest req , RedirectAttributes rttr) throws Exception {
		Logger.info("post login");
		
		HttpSession session = req.getSession();
		
		Member login = service.login(member);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg" , false);
		} else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	//로그아웃
	@RequestMapping(value = "/logout" , method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		Logger.info("get logout");
		
		session.invalidate();
		
		return "redirect:/";
	}
	//회원정보 수정 get
	@RequestMapping(value = "/modify" , method = RequestMethod.GET)
	public void getModify() throws Exception {
		Logger.info("get modify");
	}
	//회원정보 수정 POST
	@RequestMapping(value = "/modify" , method = RequestMethod.POST)
	public String postModify(HttpSession session , Member member) throws Exception {
		Logger.info("post memberModify");
		
		service.modify(member);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 탈퇴 get
	@RequestMapping(value = "/withdrawal", method = RequestMethod.GET)
	public void getWithdrawal() throws Exception {
	Logger.info("get withdrawal");
	 
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value = "/withdrawal", method = RequestMethod.POST)
	public String postWithdrawal(HttpSession session, Member member, RedirectAttributes rttr) throws Exception {
	 Logger.info("post withdrawal");
	 
	 Member vo = (Member)session.getAttribute("member");
	 
	 String oldPass = vo.getUserPass();
	 String newPass = member.getUserPass();
	     
	 if(!(oldPass.equals(newPass))) {
	  rttr.addFlashAttribute("msg", false);
	  return "redirect:/member/withdrawal";
	 }
	 
	 service.withdrawal(member);
	 
	 session.invalidate();
	  
	 return "redirect:/";
	}
}
