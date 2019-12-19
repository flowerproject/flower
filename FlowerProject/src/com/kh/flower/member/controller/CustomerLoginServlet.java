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
 * Servlet implementation class customerLoginServlet
 */
@WebServlet("/login.me")
public class CustomerLoginServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CustomerLoginServlet() {
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String userId = request.getParameter("c_id");
      String password = request.getParameter("c_password");
      
System.out.println("암호화 후 : " + password);
      
      CustomerService cs = new CustomerService();
      
      Customer c = new Customer(userId, password);
      
      c = cs.selectOne(c);
      
      if(c != null) {
         
         HttpSession session = request.getSession();
         System.out.println(c);
         session.setAttribute("Customer",  c);
         
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