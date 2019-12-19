package com.kh.flower.notice.model.dao;

import static com.kh.flower.common.JDBCTemplate.close;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.flower.notice.model.vo.Notice;

public class NoticeDAO {
	
	private Properties prop = new Properties();

	public NoticeDAO() {
		try {
			prop.load(new FileInputStream(
					   new File(NoticeDAO.class
							   .getResource("/mappers/notice.properties")
							   .getPath())));
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int getListCount(Connection con) {
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			
			stmt = con.createStatement();
			
			rset= stmt.executeQuery(sql);
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(rset);
			close(stmt);
		}
		
		return result;
	}

	public ArrayList<Notice> selectList(Connection con, int startRow, int endRow) {
		ArrayList<Notice> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Notice n = new Notice();
				
				n.setN_no(rset.getInt("n_no"));
				n.setN_title(rset.getString("n_title"));
				n.setN_content(rset.getString("n_content"));
				n.setN_date(rset.getDate("n_date"));
				
				list.add(n);
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public Notice selectOne(Connection con, int nno) {
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		try {
			String sql = prop.getProperty("selectOne");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, nno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				
				n.setN_no(nno);
				n.setN_title(rset.getString("n_title"));
				n.setN_content(rset.getString("n_content"));
				n.setN_date(rset.getDate("n_date"));
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
	}

	public int insertNotice(Connection con, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("insertNotice");
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, n.getN_title());
			pstmt.setString(2, n.getN_content());
			// pstmt.setString(3, n.getN_name());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateNotice(Connection con, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, n.getN_title());
			pstmt.setString(2, n.getN_content());
			pstmt.setInt(3, n.getN_no());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteNotice(Connection con, int nno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteNotice");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, nno);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}
