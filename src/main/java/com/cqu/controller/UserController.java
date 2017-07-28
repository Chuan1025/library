package com.cqu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cqu.dao.IuserDao;
import com.cqu.entity.Book;
import com.cqu.entity.BookClass;
import com.cqu.entity.Reader;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private  IuserDao userDao;
	@Autowired
	public IuserDao getUserDao() {
		return userDao;
	}
	@Autowired
	public void setUserDao(IuserDao userDao) {
		this.userDao = userDao;
	}
	@RequestMapping("/welcome")
	public String welcome(Model model)
	{
		
		return "welcome";
	}
	@RequestMapping(params="method=searchAllBook")
	public String serachBook(@RequestParam("bookId")String bookId ,@RequestParam("bookName")String bookName, Model model)
	{
		
		@SuppressWarnings("unchecked")
		List<Book> booklist = userDao.selectBookByName_ID(bookId, bookName);
		for(Book b :booklist){
			b.getBook_id();
			b.getBook_class();
			b.getBook_author();
			b.getBook_name();
			b.getBook_price();
			b.getBook_publish();
			
			
		}
		model.addAttribute("booklist", booklist);
		return "searchBook";
	}
	
	
	@RequestMapping("/searchBook")
	public String searchBook()
	{
		
		
		return "searchBook";
	}
	
	@RequestMapping("/left")
	public String left()
	{
		
		
		return "left";
	}
	@RequestMapping("/main")
	public String main_()
	{
		
		
		return "main";
	}
	@RequestMapping("/right")
	public String right()
	{
		
		
		return "right";
	}
	
	@RequestMapping("/top")
	public String top()
	{
		return "top";
	}
	@RequestMapping("/center")
	public String center()
	{
		return "center";
	}
	
	@RequestMapping(params="method=selectBookClass")
	public String selectBookClass(@RequestParam("bookclassName") String bookclassName ,Model model){
		
		@SuppressWarnings("unchecked")
		List<BookClass> classlist = userDao.selectBookClass(bookclassName);
		
		for(BookClass b :classlist){
			b.getBook_class();
			
		}
		model.addAttribute("classlist",classlist);
		return "bookclass";
	}
	
	@RequestMapping("/bookclass")
	public String bookclass()
	{
		return "bookclass";
	}
	
	
	//查询用户的表单提交,查询读者
	@RequestMapping(params="method=selectReader")
	public String selectReadedr(@RequestParam("readerID")String readerID,
			@RequestParam("readerName") String readerName ,Model model){
		List<Reader> readerList = userDao.selectReader(readerID, readerName);
		for (Reader reader : readerList) {
			reader.getReader_id();
			reader.getReader_name();
			reader.getReader_phone();
			reader.getReader_college();
			reader.getReader_pwd();
		}
		model.addAttribute("readerList",readerList);
		
		return "manageReader";
	}
	
	//访问用户管理的路径
	@RequestMapping("/manageReader")
	public String manageReader()
	{
		return "manageReader";
	}
	//登录成功返回信息
	@RequestMapping("/loginDetaill")
	public String loginDetail()
	{
		return "loginDetaill";
	}
	
	@RequestMapping(params="method=login")
	public String LoginTest(@RequestParam("ID") String ID ,@RequestParam("password") String password,
			@RequestParam("status") String status, Model model){
			if(status.equals("1")&&ID.equals("admin")&&password.equals("admin"))
			{
				//return "main";
				
				return "loginDetaill";
				
			}
		
		return "welcome";
	}
	//managerBook
	@RequestMapping(params="method=managerBook")
	public String managerBook(@RequestParam("bookId")String bookId ,@RequestParam("bookName")String bookName, Model model)
	{
		
		@SuppressWarnings("unchecked")
		List<Book> booklist = userDao.selectBookByName_ID(bookId, bookName);
		for(Book b :booklist){
			b.getBook_id();
			b.getBook_class();
			b.getBook_author();
			b.getBook_name();
			b.getBook_price();
			b.getBook_publish();
			
			
		}
		model.addAttribute("booklist", booklist);
		return "managerBook";
	}
	@RequestMapping("/managerBook")
	public String managerBook()
	{
		return "managerBook";
	}

}
