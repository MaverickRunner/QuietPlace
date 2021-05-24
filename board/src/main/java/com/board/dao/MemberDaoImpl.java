package com.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {

	@Inject
	SqlSession sql;
	//매퍼
	private static String namespace = "com.board.mybatis.member";
	//회원가입
	@Override
	public void register(Member member) throws Exception {
		// TODO Auto-generated method stub
		sql.insert(namespace + ".register" , member);
	}
	@Override
	public Member login(Member member) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".login" , member);
	}
	@Override
	public void modify(Member member) throws Exception {
		// TODO Auto-generated method stub
		sql.update(namespace + ".modify" , member);
	}
	@Override
	public void withdrawal(Member member) throws Exception {
		// TODO Auto-generated method stub
		sql.delete(namespace + ".withdrawal" , member);
	}
	@Override
	public int idChk(Member member) throws Exception {
		// TODO Auto-generated method stub
		int result = sql.selectOne(namespace + ".idChk" , member);
		return result;
	}

}
