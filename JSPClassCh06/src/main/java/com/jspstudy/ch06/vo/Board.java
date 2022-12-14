package com.jspstudy.ch06.vo;

import java.sql.Timestamp;

public class Board {
	/*
	NO         NOT NULL NUMBER              
	TITLE      NOT NULL VARCHAR2(50 CHAR)   
	WRITER     NOT NULL VARCHAR2(20 CHAR)   
	CONTENT    NOT NULL VARCHAR2(1000 CHAR) 
	REG_DATE   NOT NULL TIMESTAMP(6)        
	READ_COUNT NOT NULL NUMBER(5)           
	PASS       NOT NULL VARCHAR2(20 CHAR)   
	FILE1               VARCHAR2(50 CHAR)   
	*/
	
	private int no;
	private String title;
	private String writer;
	private String content;
	private Timestamp regDate;
	private int readCount;
	private String pass;
	private String file;
	
	public Board() {}
	
	public Board(int no, String title, String writer, String content, Timestamp regDate, int readCount, String pass, String file) {
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regDate = regDate;
		this.readCount = readCount;
		this.pass = pass;
		this.file = file;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
