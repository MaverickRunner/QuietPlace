package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.model.Reply;
@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mybatis.reply";
	
	@Override
	public List<Reply> list(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace + ".replyList" , bno);
	}

	@Override
	public void write(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		sql.insert(namespace + ".replyWrite", reply);
	}

	@Override
	public void modify(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		sql.update(namespace + ".replyModify", reply);
	}

	@Override
	public void delete(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		sql.delete(namespace + ".replyDelete", reply);
	}

}
