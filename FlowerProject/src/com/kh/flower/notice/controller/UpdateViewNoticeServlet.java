package com.kh.flower.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.flower.notice.model.service.NoticeService;
import com.kh.flower.notice.model.vo.Notice;

/**
 * Servlet implementation class UpdateViewNoticeServlet
 */
@WebServlet("/nUpView.no")
public class UpdateViewNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateViewNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		Notice n = new NoticeService().updateView(nno);
		
		String page = "";
		if(n != null) {
			
			page = "views/notice/noticeUpdateForm.jsp";
			request.setAttribute("notice", n);
		} else {
			
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 수정 화면 조회 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
