package com.kh.flower.member.encrypt;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class EncryptFilter
 */
@WebFilter({"*.me", "*.cu"})
public class EncryptFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncryptFilter() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// 서블릿이 동작하기 전 실행 내용
		HttpServletRequest req = (HttpServletRequest)request;
		
		System.out.println("(일반용)암호화 전 비밀번호 : " + req.getParameter("c_password"));
		System.out.println("(기업용)암호화 전 비밀번호 : " + req.getParameter("b_password"));
		
		EncryptWrapper lw = new EncryptWrapper(req);
		
		chain.doFilter(lw, response);
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
