package com.kh.flower.member.model.dao;

import static com.kh.flower.common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.flower.member.model.vo.Business;


public class BusinessDAO {

private Properties prop = new Properties();
	
	public BusinessDAO() {
		try {
			prop.load(new FileReader(
						CustomerDAO.class
						.getResource("/mappers/business.properties")
						.getPath()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insertBusiness(Connection con, Business b) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("insertBusiness");
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, b.getB_id());
			pstmt.setString(2, b.getB_password());
			pstmt.setString(3, b.getB_name());
			pstmt.setString(4, b.getB_shopname());
			pstmt.setString(5, b.getB_num());
			pstmt.setString(6, b.getB_adress());
			pstmt.setString(7, b.getB_ceoname());
			pstmt.setString(8, b.getB_mainnumber());
			pstmt.setString(9, b.getB_incharge());
			pstmt.setString(10, b.getB_incharge_p());
			pstmt.setString(11, b.getB_email());
			
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteBusiness (Connection con, String b_id) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			
			String sql  = prop.getProperty("deleteBusiness");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, b_id);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int idDupCheck2(Connection con, String b_id) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idDupCheck2");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, b_id);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	
}
