package com.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.model.Board;
import com.board.model.Page;
import com.board.model.Reply;
import com.board.service.BoardService;
import com.board.service.ReplyService;


@Controller
@RequestMapping("/board/*")
public class BoardController {

	 @Inject
	 private BoardService service;
	 
	 @Inject
	 private ReplyService replyService;

	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception {
  
		  List<Board> list = null;
		  list = service.list();
		  model.addAttribute("list", list);
	 }
	//게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite(HttpSession session , Model model) throws Exception {
		
		Object loginInfo = session.getAttribute("member");
		
		if(loginInfo == null) {
			model.addAttribute("msg" , false);
		}
	}
	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(Board board) throws Exception {
	  service.write(board);
	  
	  return "redirect:/board/listPageSearch?num=1";
	}
	
	//게시물 조회
	@RequestMapping(value = "/view" , method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno , Model model) throws Exception{
		
		Board board = service.view(bno);
		
		model.addAttribute("view" , board);
		
		//댓글 조회
		List<Reply> reply = null;
		reply = replyService.list(bno);
		model.addAttribute("reply" , reply);
		
	}
	
	
	
	//게시물 수정
	@RequestMapping(value = "/modify" , method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno , Model model) throws Exception {
		
		Board board = service.view(bno);
		
		model.addAttribute("view" , board);
		
	}
	
	//게시물 수정
	@RequestMapping(value = "/modify" , method = RequestMethod.POST)
	public String postModify(Board board) throws Exception {
		
		service.modify(board);
	
		return "redirect:/board/view?bno=" + board.getBno();
	}
	
	//게시물 삭제
	@RequestMapping(value = "/delete" , method = RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) throws Exception {
		
		service.delete(bno);
		
		return "redirect:/board/listPageSearch?num=1";
	}
	
	// 게시물 목록 + 페이징 추가 + 검색
	@RequestMapping(value = "/listPageSearch", method = RequestMethod.GET)
	public void getListPageSearch(Model model, @RequestParam("num") int num, 
		@RequestParam(value = "searchType",required = false, defaultValue = "title") String searchType,
		@RequestParam(value = "keyword",required = false, defaultValue = "") String keyword
	  ) throws Exception {

	 
	 Page page = new Page();
	 
	 page.setNum(num);  
	 page.setCount(service.searchCount(searchType, keyword));
	// 검색 타입과 검색어
	 page.setSearchType(searchType);
	 page.setKeyword(keyword);
	 
	 List<Board> list = null; 
	 list = service.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
	 
	 model.addAttribute("list", list);
	 model.addAttribute("page", page);
	 model.addAttribute("select", num);
	 
	
	 
	}

	
}