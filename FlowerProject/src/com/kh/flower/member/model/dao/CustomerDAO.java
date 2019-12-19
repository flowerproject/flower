package com.kh.flower.member.model.dao;

import static com.kh.flower.common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.flower.member.model.vo.Customer;

public class CustomerDAO {
	
	private Properties prop = new Properties();
	
	public CustomerDAO() {
		try {
			prop.load(new FileReader(
						CustomerDAO.class
						.getResource("/mappers/customer.properties")
						.getPath()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertCustomer(Connection con, Customer c) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("insertCustomer");
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, c.getC_id());
			pstmt.setString(2, c.getC_password());
			pstmt.setString(3, c.getC_name());
			pstmt.setString(4, c.getC_birth());
			pstmt.setString(5, c.getC_gender());
			pstmt.setString(6, c.getC_address());
			pstmt.setString(7, c.getC_phone());
			pstmt.setString(8, c.getC_email());
			pstmt.setString(9, c.getC_interest());
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteCustomer (Connection con, String c_id) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			
			String sql  = prop.getProperty("deleteCustomer");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, c_id);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int idDupCheck(Connection con, String c_id) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idDupCheck");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, c_id);
			
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

	public Customer selectOne(Connection con, Customer c) {
	      Customer result = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      
	      try {
	         
	         String sql  = prop.getProperty("selectMember");
	         
	         pstmt = con.prepareStatement(sql);
	         
	         pstmt.setString(1, c.getC_id());
	         pstmt.setString(2, c.getC_password());
	         
	         rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            result = new Customer();
	            
	            
	            result.setC_id(c.getC_id());
	            result.setC_password(c.getC_password());
	            
	            result.setC_no(rset.getInt("C_NO"));
	            result.setC_name(rset.getString("C_NAME"));
	            result.setC_birth(rset.getString("C_BIRTH"));
	            result.setC_gender(rset.getString("C_GENDER"));
	            result.setC_address(rset.getString("C_ADDRESS"));
	            result.setC_phone(rset.getString("C_PHONE"));
	            result.setC_email(rset.getString("C_EMAIL"));
	            result.setC_interest(rset.getString("C_INTEREST"));
	            result.setC_level(rset.getString("C_LEVEL"));
	            result.setC_date(rset.getDate("C_DATE"));
	         }
	         
	      } catch(SQLException e) {
	         
	         e.printStackTrace();
	         
	      } finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return result;
	   }

	public int updateCustomer(Connection con, Customer c) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("updateCustomer");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, c.getC_password());
			pstmt.setString(2, c.getC_address());
			pstmt.setString(3, c.getC_phone());
			pstmt.setString(4, c.getC_interest());
			pstmt.setString(5, c.getC_id());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {			
			close(pstmt);
		}
		
		return result;
	}

	
	
}
