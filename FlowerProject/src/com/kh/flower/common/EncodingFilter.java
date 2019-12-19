package com.kh.flower.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
// @WebFilter("/*")
// 서블릿을 가기 전에 먼저 들리게 되는 클래스
public class EncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		//System.out.println("인코딩 필터 소멸~~!");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		/*
		 * doGet()이나 doPost()에 직접 작성하던 인코딩 문자셋을
		 * filter에 미리 등록하여 서블릿에 작성할 내용을 미리 동작시키는
		 * 코드를 구현할 수 있다.
		 * 
		 * 이로 인해 여러 서블릿들이 공통으로 가지던 소스 코드를
		 * 하나만 만들어 재사용할 수 있다. 
		 */
		// 서블릿 동작 전에 인코딩 실행하기
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//System.out.println("인코딩 필터 실행합니다~~~!");
		
		// 서블릿한테 가기 전 소스 코드
		
		chain.doFilter(request, response);
		
		// 서블릿 동작 이후 소스 코드
		//System.out.println("doFilter() 메소드 실행 후 처리되는 내용입니다~~~~!");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// init은 필터를 만들어주는애
		//System.out.println("인코딩 필터 생성!!");
	}

}
