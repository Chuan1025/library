package com.cqu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import com.cqu.entity.Book;
import com.cqu.entity.BookClass;
import com.cqu.entity.Reader;
import com.cqu.dao.MyBatisUtil;




public class UserDaoImpl implements IuserDao {
	
	 static SqlSessionFactory sqlSessionFactory = null;   
	    static {   
	       sqlSessionFactory = MyBatisUtil.getSqlSessionFactory();
	    }   
	
	
	
	@Override
	public List selectAllBook() { //查询系统中所有的书
		
		SqlSession sqlSession = sqlSessionFactory.openSession();   
		  UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
		  userMapper.selectBook();
		  List<Book> booklist = userMapper.selectBook();
		  sqlSession.close();
		  return booklist;
	}


	/*
	 * (non-Javadoc)
	 * @see com.cqu.dao.IuserDao#selectByBorrow(int)
	 * 按条件查询是否借出或者未借出的书
	 */
	@Override
	public List selectByBorrow(int borrow) { //传入一个参数（0或者1），表示借出或者没借出，返回图书表中相应的数据
		
		SqlSession sqlSession = sqlSessionFactory.openSession();   
		  UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
		 // userMapper.selectBook();
		  List<Book> booklist = userMapper.selectByBorrow(borrow);
		  sqlSession.close();
		  return booklist;
	}


	@Override
	public List selectBookByName_ID(String id, String name) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();   
		  UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
		 // userMapper.selectBook();
		  List<Book> booklist = userMapper.selectBookByName_ID(id.trim(), name.trim()); //trim()函数用于去除用户不小心加入的空格符号
		  sqlSession.close();
		  return booklist;
	}
	
	@Override
	public List selectBookClass(String name){
		SqlSession sqlSession = sqlSessionFactory.openSession();   
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
		List<BookClass> bookclasslist = userMapper.selectBookClass(name.trim());
		sqlSession.close();
		return bookclasslist;
	}


	@Override
	public List selectReader(String readerID, String readerName) {
		SqlSession sqlSession = sqlSessionFactory.openSession();   
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
		List<Reader> readerList = userMapper.selectReader(readerID, readerName);
		sqlSession.close();
		return readerList;
		
	}
	  
	
	
	

}
