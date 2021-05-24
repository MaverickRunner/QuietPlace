package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.model.Reply;
import com.board.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Inject
	private ReplyService replyService;
	
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(Reply reply) throws Exception {
	    
	    replyService.write(reply);
	    
	    return "redirect:/board/view?bno=" + reply.getBno();
	}
	@RequestMapping(value = "/modify" , method = RequestMethod.POST)
	public String posttModify(
			@RequestParam("bno") int bno ,
			@RequestParam("rno") int rno , Model model
			) throws Exception {
		
		
		
		return "redirect:/board/view?bno=" ;
	}

}
