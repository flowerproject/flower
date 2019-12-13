<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>

      <header class="site-navbar js-sticky-header site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">


            <div class="site-logo">
              <a href="${pageContext.request.contextPath }/index.jsp" class="text-black"><img class="logo" src="${pageContext.request.contextPath }/resources/images/flowerProjectPoto.png" alt="" /></a>
            </div>

            <div class="col-9">
              <nav class="site-navigation text-right ml-auto " role="navigation">

                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                  <li><a href="#home-section" class="nav-link">Home</a></li>
                  <li><a href="default.jsp" class="nav-link">상품</a></li>


                  <li>
                    <a href="views/infoBoard/info.jsp" class="nav-link">정보</a>
                    
                  </li>

                  <li><a href="#why-us-section" class="nav-link">고객센터</a></li>

                  <li><a href="#testimonials-section" class="nav-link">마이 페이지</a></li>
                  <li><a href="#blog-section" class="nav-link">Blog</a></li>
                  <li><a href="#contact-section" class="nav-link">Contact</a></li>
                </ul>
              </nav>

            </div>
			<div class="col-3">
				<button class="btn btn-light" onclick="memberLogin()">로그인</button> &nbsp;
				<button class="btn btn-light" onclick="memberJoin()">회원가입</button>
			</div>
            <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
	
          </div>
        </div>
		<script>
		function memberLogin(){
			location.href = "${ pageContext.request.contextPath }/views/member/memberLoginForm.jsp";
		}
		
		function memberJoin() {
			location.href = "${ pageContext.request.contextPath }/views/common/signUp.jsp";
		}
		
		
		</script>
      </header>
