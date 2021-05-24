package com.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.MemberDao;
import com.board.model.Member;
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDao dao;
	
	//회원가입
	@Override
	public void register(Member member) throws Exception {
		// TODO Auto-generated method stub
		dao.register(member);
	}

	@Override
	public Member login(Member member) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(member);
	}

	@Override
	public void modify(Member member) throws Exception {
		// TODO Auto-generated method stub
		dao.modify(member);
	}

	@Override
	public void withdrawal(Member member) throws Exception {
		// TODO Auto-generated method stub
		dao.withdrawal(member);
	}

	@Override
	public int idChk(Member member) throws Exception {
		// TODO Auto-generated method stub
		int result = dao.idChk(member);
		return result;
	}

}
