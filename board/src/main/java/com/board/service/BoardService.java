package com.board.service;

import java.util.List;

import com.board.model.Board;


public interface BoardService {

	public List<Board> list() throws Exception; 
	
	public void write(Board board) throws Exception;
	
	public Board view(int bno) throws Exception;

	public void modify(Board board) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public int count() throws Exception;
	
	public List listPage(int displayPost , int postNum) throws Exception;
	
	// 게시물 목록 + 페이징 + 검색
	public List<Board> listPageSearch(
	  int displayPost, int postNum, String searchType, String keyword) throws Exception;


	// 게시물 총 갯수 + 검색 적용
	public int searchCount(String searchType, String keyword) throws Exception;
	

}