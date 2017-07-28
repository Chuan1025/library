package com.cqu.dao;

import java.util.List;

public interface IuserDao {

	List selectAllBook();
	List selectByBorrow(int borrow);
	List selectBookByName_ID(String id ,String name);
	List selectBookClass(String name);
	List selectReader(String readerID,String readerName);
}
