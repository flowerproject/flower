package com.kh.flower.notice.model.service;

import static com.kh.flower.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.flower.notice.model.dao.NoticeDAO;
import com.kh.flower.notice.model.vo.Notice;

public class NoticeService {
	private NoticeDAO ndao = new NoticeDAO();
	Connection con;

	public int getListCount() {
		con = getConnection();
		
		int result = ndao.getListCount(con);
		
		close(con);
		
		return result;
	}

	public ArrayList<Notice> selectList(int currentPage, int limit) {
		con = getConnection();
		
		// 게시글 시작값과 끝값 미리 계산하기
		int startRow = (currentPage - 1) * limit;
		int endRow = startRow + 5;
				
		ArrayList<Notice> list = ndao.selectList(con, startRow, endRow);
		
		close(con);
		
		return list;
	}

	public Notice selectOne(int nno) {
		con = getConnection();
		
		Notice n = ndao.selectOne(con, nno);
		
		close(con);
		
		return n;
	}

	public int insertNotice(Notice n) {
		con = getConnection();
		
		int result = ndao.insertNotice(con, n);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Notice updateView(int nno) {
		con = getConnection();
		
		Notice n = ndao.selectOne(con, nno);
		
		close(con);
		
		return n;
	}

	public int updateNotice(Notice n) {
		con = getConnection();
		
		int result = ndao.updateNotice(con, n);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public int deleteNotice(int nno) {
		con = getConnection();
		
		int result = ndao.deleteNotice(con, nno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

}
