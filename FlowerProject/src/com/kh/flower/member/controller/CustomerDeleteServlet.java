package com.kh.flower.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.flower.member.model.service.CustomerService;
import com.kh.flower.member.model.vo.Customer;

/**
 * Servlet implementation class CustomerDeleteServlet
 */
@WebServlet("/delete.cn")
public class CustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerService cs = new CustomerService();
		HttpSession session = request.getSession(false);
		
		Customer c = (Customer)session.getAttribute("Customer");
		
		System.out.println("회원 기존 정보 : " + session.getAttribute("Customer"));
		
		if(cs.deleteCustomer(c.getC_id()) > 0) {
			System.out.println("회원 탈퇴 완료! " + c);
			
			session.invalidate();
			
			response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("msg", "회원 탈퇴 중 에러가 발생하였습니다.");
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
