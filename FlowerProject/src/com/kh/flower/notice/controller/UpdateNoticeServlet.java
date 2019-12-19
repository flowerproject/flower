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
 * Servlet implementation class UpdateNoticeServlet
 */
@WebServlet("/update.no")
public class UpdateNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		NoticeService ns = new NoticeService();
		
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		Notice n = ns.updateView(nno);
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		n.setN_title(title);
		n.setN_content(content);
		
		int result = ns.updateNotice(n);
		
		if(result > 0) {
			
			response.sendRedirect("selectList.no");
		} else {
			
			request.setAttribute("msg", "게시글 수정 중 오류 발생");
			request.getRequestDispatcher("views/common/errorPage.jsp")
				   .forward(request, response);
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
