package com.kh.flower.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.flower.member.model.service.CustomerService;

/**
 * Servlet implementation class IdDupServlet
 */
@WebServlet("/idDup.me")
public class IdDupServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdDupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      String userId = request.getParameter("c_id");
      
      CustomerService cs = new CustomerService();
      
      int result = cs.idDupCheck(userId);
      
      // 0 or 1
      // 0 가능
      // 1 ㄴㄴ
      
      response.getWriter().print(result > 0 ? false : true);
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}