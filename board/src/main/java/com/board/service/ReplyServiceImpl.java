package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.ReplyDao;
import com.board.model.Reply;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDao dao;
	
	@Override
	public List<Reply> list(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(bno);
	}

	@Override
	public void write(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		dao.write(reply);
	}

	@Override
	public void modify(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		dao.modify(reply);
	}

	@Override
	public void delete(Reply reply) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(reply);
	}

}
