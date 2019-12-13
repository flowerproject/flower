package com.kh.flower.member.model.vo;

import java.sql.Date;

public class Business {
	
	// 1. 필드 변수
	private	int b_no;
	private	String b_id;
	private	String b_password;
	private	String b_name;
	private	String b_shopname;
	private	String b_num;
	private	String b_adress;
	private	String b_ceoname;
	private	String b_mainnumber;
	private	String b_incharge;
	private	String b_incharge_p;
	private	String b_email;
	private	Date b_date;
	
	// 기본 생성자
	public Business() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	// 기업 로그인 전용
	public Business(String b_id, String b_password) {
		super();
		this.b_id = b_id;
		this.b_password = b_password;
	}



	// 모든정보 
	public Business(int b_no, String b_id, String b_password, String b_name, String b_shopname, String b_num,
			String b_adress, String b_ceoname, String b_mainnumber, String b_incharge, String b_incharge_p,
			String b_email, Date b_date) {
		super();
		this.b_no = b_no;
		this.b_id = b_id;
		this.b_password = b_password;
		this.b_name = b_name;
		this.b_shopname = b_shopname;
		this.b_num = b_num;
		this.b_adress = b_adress;
		this.b_ceoname = b_ceoname;
		this.b_mainnumber = b_mainnumber;
		this.b_incharge = b_incharge;
		this.b_incharge_p = b_incharge_p;
		this.b_email = b_email;
		this.b_date = b_date;
	}

	// 기업회원 회원가입용
	public Business(String b_id, String b_password, String b_name, String b_shopname, String b_num, String b_adress,
			String b_ceoname, String b_mainnumber, String b_incharge, String b_incharge_p, String b_email) {
		super();
		this.b_id = b_id;
		this.b_password = b_password;
		this.b_name = b_name;
		this.b_shopname = b_shopname;
		this.b_num = b_num;
		this.b_adress = b_adress;
		this.b_ceoname = b_ceoname;
		this.b_mainnumber = b_mainnumber;
		this.b_incharge = b_incharge;
		this.b_incharge_p = b_incharge_p;
		this.b_email = b_email;
	}


	public int getB_no() {
		return b_no;
	}


	public void setB_no(int b_no) {
		this.b_no = b_no;
	}


	public String getB_id() {
		return b_id;
	}


	public void setB_id(String b_id) {
		this.b_id = b_id;
	}


	public String getB_password() {
		return b_password;
	}


	public void setB_password(String b_password) {
		this.b_password = b_password;
	}


	public String getB_name() {
		return b_name;
	}


	public void setB_name(String b_name) {
		this.b_name = b_name;
	}


	public String getB_shopname() {
		return b_shopname;
	}


	public void setB_shopname(String b_shopname) {
		this.b_shopname = b_shopname;
	}


	public String getB_num() {
		return b_num;
	}


	public void setB_num(String b_num) {
		this.b_num = b_num;
	}


	public String getB_adress() {
		return b_adress;
	}


	public void setB_adress(String b_adress) {
		this.b_adress = b_adress;
	}


	public String getB_ceoname() {
		return b_ceoname;
	}


	public void setB_ceoname(String b_ceoname) {
		this.b_ceoname = b_ceoname;
	}


	public String getB_mainnumber() {
		return b_mainnumber;
	}


	public void setB_mainnumber(String b_mainnumber) {
		this.b_mainnumber = b_mainnumber;
	}


	public String getB_incharge() {
		return b_incharge;
	}


	public void setB_incharge(String b_incharge) {
		this.b_incharge = b_incharge;
	}


	public String getB_incharge_p() {
		return b_incharge_p;
	}


	public void setB_incharge_p(String b_incharge_p) {
		this.b_incharge_p = b_incharge_p;
	}


	public String getB_email() {
		return b_email;
	}


	public void setB_email(String b_email) {
		this.b_email = b_email;
	}


	public Date getB_date() {
		return b_date;
	}


	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}


	@Override
	public String toString() {
		return "Business [b_no=" + b_no + ", b_id=" + b_id + ", b_password=" + b_password + ", b_name=" + b_name
				+ ", b_shopname=" + b_shopname + ", b_num=" + b_num + ", b_adress=" + b_adress + ", b_ceoname="
				+ b_ceoname + ", b_mainnumber=" + b_mainnumber + ", b_incharge=" + b_incharge + ", b_incharge_p="
				+ b_incharge_p + ", b_email=" + b_email + ", b_date=" + b_date + "]";
	}
	
	
	

}
