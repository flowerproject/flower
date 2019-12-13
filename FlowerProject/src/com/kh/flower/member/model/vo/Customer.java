package com.kh.flower.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

// VO : 데이터 전달용 클래스
public class Customer implements Serializable{

	// 1. 필드 변수
	private int	c_no; 
	private String c_id; 
	private String c_password; 
	private String c_name ;
	private String c_birth; 
	private String c_gender ;
	private String c_address ;
	private String c_phone ;
	private String c_email;
	private String c_interest; 
	private String c_level ;
	private Date c_date ;
	
	// 2. 생성자
	// 기본 생성자
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 로그인 전용 
	
	public Customer(String c_id, String c_password) {
		super();
		this.c_id = c_id;
		this.c_password = c_password;
	}
	
	// 모든정보용 
	// 회원가입
	public Customer(String c_id, String c_password, String c_name, String c_birth, String c_gender, String c_address,
			String c_phone, String c_email, String c_interest) {
		super();
		this.c_id = c_id;
		this.c_password = c_password;
		this.c_name = c_name;
		this.c_birth = c_birth;
		this.c_gender = c_gender;
		this.c_address = c_address;
		this.c_phone = c_phone;
		this.c_email = c_email;
		this.c_interest = c_interest;
	}
	public Customer(int c_no, String c_id, String c_password, String c_name, String c_birth, String c_gender,
			String c_address, String c_phone, String c_email, String c_interest, String c_level, Date c_date) {
		super();
		this.c_no = c_no;
		this.c_id = c_id;
		this.c_password = c_password;
		this.c_name = c_name;
		this.c_birth = c_birth;
		this.c_gender = c_gender;
		this.c_address = c_address;
		this.c_phone = c_phone;
		this.c_email = c_email;
		this.c_interest = c_interest;
		this.c_level = c_level;
		this.c_date = c_date;
	}
	

	@Override
	public String toString() {
		return "Customer [c_no=" + c_no + ", c_id=" + c_id + ", c_password=" + c_password + ", c_name=" + c_name
				+ ", c_birth=" + c_birth + ", c_gender=" + c_gender + ", c_address=" + c_address + ", c_phone="
				+ c_phone + ", c_email=" + c_email + ", c_interest=" + c_interest + ", c_level=" + c_level + ", c_date="
				+ c_date + "]";
	}

	// 3. get  & setter
	
	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_password() {
		return c_password;
	}

	public void setC_password(String c_password) {
		this.c_password = c_password;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_birth() {
		return c_birth;
	}

	public void setC_birth(String c_birth) {
		this.c_birth = c_birth;
	}

	public String getC_gender() {
		return c_gender;
	}

	public void setC_gender(String c_gender) {
		this.c_gender = c_gender;
	}

	public String getC_address() {
		return c_address;
	}

	public void setC_address(String c_address) {
		this.c_address = c_address;
	}

	public String getC_phone() {
		return c_phone;
	}

	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}

	public String getC_email() {
		return c_email;
	}

	public void setC_email(String c_email) {
		this.c_email = c_email;
	}

	public String getC_interest() {
		return c_interest;
	}

	public void setC_interest(String c_interest) {
		this.c_interest = c_interest;
	}

	public String getC_level() {
		return c_level;
	}

	public void setC_level(String c_level) {
		this.c_level = c_level;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	
	
	

}
