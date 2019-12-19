package com.kh.flower.notice.model.vo;

import java.sql.Date;

public class Notice {
	private int n_no;
	private String n_title;
	private String n_content;
	private String n_name;
	private Date n_date;
	
	public Notice() {
		super();
	}
	
	// 전체
	public Notice(int n_no, String n_title, String n_content, String n_name, Date n_date) {
		super();
		this.n_no = n_no;
		this.n_title = n_title;
		this.n_content = n_content;
		this.n_name = n_name;
		this.n_date = n_date;
	}
	
	// 게시글 작서용
	public Notice(String n_title, String n_content) {
		super();
		this.n_title = n_title;
		this.n_content = n_content;
	}

	@Override
	public String toString() {
		return "Notice [n_no=" + n_no + ", n_title=" + n_title + ", n_content=" + n_content + ", n_name=" + n_name
				+ ", n_date=" + n_date + "]";
	}

	public int getN_no() {
		return n_no;
	}

	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public Date getN_date() {
		return n_date;
	}

	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	
	
}
