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
 * Servlet implementation class CustomerUpdateServlet
 */
@WebServlet("/update.cu")
public class CustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pwd = request.getParameter("c_password");
		String address = request.getParameter("zipCode")
						+ request.getParameter("address1")
						+ request.getParameter("address2");
		String phone = request.getParameter("c_phone");
		String interest = String.join(", ", request.getParameterValues("c_interest"));
		
		CustomerService cs = new CustomerService();
		
		HttpSession session = request.getSession(false);
		
		Customer c = (Customer)session.getAttribute("Customer");
		
		c.setC_password(pwd);
		c.setC_address(address);
		c.setC_phone(phone);
		c.setC_interest(interest);
		
		System.out.println("회원 기존 정보 : " +session.getAttribute("Customer"));
		
		System.out.println("회원 정보 수정 시 전달 받은 값 : " + c);
		
		if(cs.updateCustomer(c) != 0) {
			
			System.out.println("회원 정보 수정 완료! : " + c);
			response.sendRedirect("index.jsp");
			
		} else {
			request.setAttribute("msg", "회원 정보 수정 중 에러가 발생하였습니다.");
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
