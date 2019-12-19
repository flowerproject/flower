package com.kh.flower.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.flower.member.model.service.BusinessService;
import com.kh.flower.member.model.vo.Business;

/**
 * Servlet implementation class BusinessLoginServlet
 */
@WebServlet("/login1.me")
public class BusinessLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("b_id");
		String password = request.getParameter("b_password");
		
		System.out.println("암호화 후 : " + password);
		
		BusinessService ms = new BusinessService();
		
		Business b = new Business(userId, password);
		
		b = ms.selectOne(b);
		
		if(b != null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("Business",  b);
			
			response.sendRedirect("index.jsp");			
		} else { 
			request.setAttribute("msg", "로그인 실패");
			
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
