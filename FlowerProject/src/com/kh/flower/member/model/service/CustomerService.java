package com.kh.flower.member.model.service;

import static com.kh.flower.common.JDBCTemplate.close;

import java.sql.Connection;

import com.kh.flower.member.model.dao.CustomerDAO;
import static com.kh.flower.common.JDBCTemplate.commit;
import static com.kh.flower.common.JDBCTemplate.getConnection;
import static com.kh.flower.common.JDBCTemplate.rollback;

import com.kh.flower.member.model.vo.Customer;

public class CustomerService {
	CustomerDAO cDao = new CustomerDAO();
	Connection con = null;
	
	public int insertCustomer(Customer c) {
		con = getConnection();
		int result = cDao.insertCustomer(con, c);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int deleteCustomer(String c_id) {
		con = getConnection();
		
		int result = cDao.deleteCustomer(con, c_id);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int idDupCheck(String c_id) {
con = getConnection();
		
		int result = cDao.idDupCheck(con, c_id);
		
		close(con);
		
		return result;
	
	}

}
