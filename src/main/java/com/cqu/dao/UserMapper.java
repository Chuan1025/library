package com.cqu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cqu.entity.*;
public interface UserMapper {
	List<Book> selectBook();
	List<Book> selectByBorrow(@Param("borrow") int borrow);
	List<Book> selectBookByName_ID(@Param("bookID") String bookID,@Param("bookName") String bookName);
	List<BookClass> selectBookClass(@Param("bookclassName") String bookclassName);
	List<Reader> selectReader(@Param("readerID") String readerID, @Param("readerName") String readerName);
}
