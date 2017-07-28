package com.cqu.entity;

public class Book {
	private String book_id; 		 //书的编号
	private String book_class;		//类别
	private String book_publish;	//出版社
	private String book_author;		// 作者
	private String book_name;		//书名
	private double book_price;		//书的价格
	private  boolean book_borrow;	//是否借出
	
	
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getBook_class() {
		return book_class;
	}
	public void setBook_class(String book_class) {
		this.book_class = book_class;
	}
	public String getBook_publish() {
		return book_publish;
	}
	public void setBook_publish(String book_publish) {
		this.book_publish = book_publish;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public double getBook_price() {
		return book_price;
	}
	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}
	public boolean isBook_borrow() {
		return book_borrow;
	}
	public void setBook_borrow(boolean book_borrow) {
		this.book_borrow = book_borrow;
	}
	@Override
	public String toString() {
		return "Book [getBook_id()=" + getBook_id() + ", getBook_class()="
				+ getBook_class() + ", getBook_publish()=" + getBook_publish()
				+ ", getBook_author()=" + getBook_author()
				+ ", getBook_name()=" + getBook_name() + ", getBook_price()="
				+ getBook_price() + ", isBook_borrow()=" + isBook_borrow()
				+ "]";
	}
	
	

}
