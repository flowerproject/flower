package com.kh.flower.member.model.service;

import static com.kh.flower.common.JDBCTemplate.close;

import java.sql.Connection;

import com.kh.flower.member.model.dao.BusinessDAO;
import com.kh.flower.member.model.dao.CustomerDAO;
import static com.kh.flower.common.JDBCTemplate.commit;
import static com.kh.flower.common.JDBCTemplate.getConnection;
import static com.kh.flower.common.JDBCTemplate.rollback;

import com.kh.flower.member.model.vo.Business;
import com.kh.flower.member.model.vo.Customer;

public class BusinessService {
	BusinessDAO bDao = new BusinessDAO();
	Connection con = null;
	
	public int insertBusiness(Business b) {
		con = getConnection();
		int result = bDao.insertBusiness(con, b);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int deleteBusiness(String b_id) {
		con = getConnection();
		
		int result = bDao.deleteBusiness(con, b_id);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int idDupCheck2(String b_id) {
		con = getConnection();
		
		int result = bDao.idDupCheck2(con, b_id);
		
		close(con);
		
		return result;
	
	}

	public Business selectOne(Business b) {
		con = getConnection();
		Business result = bDao.selectOne(con, b);
		
		if(result != null) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

}
