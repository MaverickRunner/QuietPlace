package com.board.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.model.Board;



@Repository
public class BoardDaoImpl implements BoardDao {

 @Inject
 private SqlSession sql;
 
 private static String namespace = "com.board.mybatis.board";

 // 게시물 목록
 @Override
 public List<Board> list() throws Exception { 
  
  return sql.selectList(namespace + ".list");
 }

@Override
public void write(Board board) throws Exception {
	// TODO Auto-generated method stub
	sql.insert(namespace + ".write" , board);
}


public Board view(int bno) throws Exception {
	// TODO Auto-generated method stub
	return sql.selectOne(namespace + ".view" , bno);
}

@Override
public void modify(Board board) throws Exception {
	// TODO Auto-generated method stub
	sql.update(namespace + ".modify" , board);
}

@Override
public void delete(int bno) throws Exception {
	// TODO Auto-generated method stub
	sql.delete(namespace + ".delete" , bno);
}

@Override
public int count() throws Exception {
	// TODO Auto-generated method stub
	return sql.selectOne(namespace + ".count");
}

@Override
public List<Board> listPage(int displayPost, int postNum) throws Exception {
	// TODO Auto-generated method stub
	HashMap data = new HashMap();
	
	data.put("displayPost", displayPost);
	data.put("postNum", postNum);
	
	return sql.selectList(namespace + ".listPage" , data);
}

//게시물 목록 + 페이징 + 검색
@Override
public List<Board> listPageSearch(
int displayPost, int postNum, String searchType, String keyword) throws Exception {

HashMap<String, Object> data = new HashMap<String, Object>();

data.put("displayPost", displayPost);
data.put("postNum", postNum);

data.put("searchType", searchType);
data.put("keyword", keyword);

return sql.selectList(namespace + ".listPageSearch", data);
}

//게시물 총 갯수 + 검색 적용
@Override
public int searchCount(String searchType, String keyword) throws Exception {

HashMap data = new HashMap();

data.put("searchType", searchType);
data.put("keyword", keyword);

return sql.selectOne(namespace + ".searchCount", data); 
}

}