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
 * Servlet implementation class DeleteNoticeServlet
 */
@WebServlet("/delete.no")
public class DeleteNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		NoticeService ns = new NoticeService();
		
		Notice n = ns.updateView(nno);
		
		int result = ns.deleteNotice(nno);
		
		if(result > 0) {
			
			response.sendRedirect("selectList.no");
			
		} else {
			
			request.setAttribute("msg", "게시글 삭제 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp")
			       .forward(request, response);;
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}