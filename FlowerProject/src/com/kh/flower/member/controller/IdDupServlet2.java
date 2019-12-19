package com.kh.flower.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.flower.member.model.service.BusinessService;


/**
 * Servlet implementation class IdDupServlet
 */
@WebServlet("/idDup2.me")
public class IdDupServlet2 extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdDupServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      String userId = request.getParameter("b_id");
      
      BusinessService bs = new BusinessService();
      
      int result = bs.idDupCheck2(userId);
      
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