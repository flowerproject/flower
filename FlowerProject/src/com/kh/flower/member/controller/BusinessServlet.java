package com.kh.flower.member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.flower.member.model.service.BusinessService;
import com.kh.flower.member.model.service.CustomerService;
import com.kh.flower.member.model.vo.Business;
import com.kh.flower.member.model.vo.Customer;

/**
 * Servlet implementation class CustomerServlet
 */
@WebServlet("/insert1.me")
public class BusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 회원 기입한 정보
		String b_id = request.getParameter("b_id");
		String b_password = request.getParameter("b_password");
		String b_name = request.getParameter("b_name");
		String b_shopname = request.getParameter("b_shopname");
		String b_num = request.getParameter("b_num");
		String b_address = request.getParameter("zipCode") + ", "
     		   + request.getParameter("address1") + ", "
     		   + request.getParameter("address2");
		String b_ceoname = request.getParameter("b_ceoname");
		String b_mainnumber = request.getParameter("b_mainnumber");
		String b_incharge = request.getParameter("b_incharge");
		String b_incharge_p = request.getParameter("b_incharge_p");
		String b_email = request.getParameter("b_email");
		
		
		
		 // 회원 가입용 Member 확인하기
	      Business b = new Business(b_id, b_password, b_name, b_shopname, b_num, b_address,
	    		  b_ceoname, b_mainnumber, b_incharge, b_incharge_p, b_email); 
	   
	      
	      System.out.println("받은 정보 확인 : " + b);
		
	      BusinessService bs = new BusinessService();
		
	      int result = bs.insertBusiness(b);
		
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
