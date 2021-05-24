package com.board.service;

import com.board.model.Member;

public interface MemberService {

	// 회원가입
	public void register(Member member) throws Exception;
	//로그인
	public Member login(Member member) throws Exception;
	//회원정보 수정
	public void modify(Member member) throws Exception;
	//회원 탈퇴
	public void withdrawal(Member member) throws Exception;
	//아이디 체크
	public int idChk(Member member) throws Exception;
}
