package com.kh.flower.member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.flower.member.model.service.CustomerService;
import com.kh.flower.member.model.vo.Customer;

/**
 * Servlet implementation class CustomerServlet
 */
@WebServlet("/insert.me")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 회원 기입한 정보
		String c_id = request.getParameter("c_id");
		String c_password = request.getParameter("c_password");
		String c_name = request.getParameter("c_name");
		
		String c_birth = request.getParameter("yyyy")+"-"+ request.getParameter("mm")+"-"+ request.getParameter("dd");
		
		String c_gender = request.getParameter("c_gender");
		String c_address = request.getParameter("zipCode") + ", "
                		   + request.getParameter("address1") + ", "
                		   + request.getParameter("address2");
		
		String c_phone = request.getParameter("c_phone");
		String c_email = request.getParameter("c_email");
		System.out.println(request.getParameterValues("c_intertest"));
		String c_interest = String.join(", ", request.getParameterValues("c_interest"));
		
		
		
		 // 회원 가입용 Member 확인하기
	      Customer c  = new Customer(c_id, c_password, c_name, c_birth, c_gender, c_address,
	  			 c_phone,  c_email,  c_interest);
	   
	      
	      System.out.println("받은 정보 확인 : " + c);
		
	      CustomerService cs = new CustomerService();
		
	      int result = cs.insertCustomer(c);
		
	      if(result > 0) {
	          // 회원 가입 성공!
	          System.out.println("회원 가입 성공!");
	          
	          // 성공하면 바로 로그인 창으로 보내라
	          response.sendRedirect("index.jsp");
	      
	}else {
        // 회원 가입 실패!
        request.setAttribute("msg", "회원 가입 실패!");
        request.getRequestDispatcher("views/common/errorPage.jsp")
              .forward(request, response);
        // 실패하면 에러페이지로!
        // response.sendRedirect("views/common/error.jsp");
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
