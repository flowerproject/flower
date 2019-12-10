<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    
    <header class="hd">
        <div class="inner">
            <div class="logo">
                <a href="${ pageContext.request.contextPath }">
                    <img src="${ pageContext.request.contextPath }/resources/images/logo.png">
                </a>
            </div>
            <ul class="menu">
                <li rel="menu1" class="active" style="color: 
                rgb(247, 193, 45);">회사소개
                    <ul class="sub">
                        <br>
                        <li><div id="greetInfo" onclick="greetInfo();">인사말</div></li><br>
                        <li><a href="#">회사소개</a></li><br>
                        <li><a href="#">기업소개</a></li>
                    </ul>
                </li>
                <li rel="menu2" style="color: 
                rgb(247, 193, 45);">정보게시판 
                    <ul class="sub">
                        <br>
                        <li><a href="#">장례정보</a></li><br>
                        <li><a href="#">제례정보</a></li>
                    </ul>
                </li>
                <li rel="menu3" style="color: 
                rgb(247, 193, 45);">상품 정보 
                    <ul class="sub">
                        <br>
                        <li><a href="#">인사말</a></li>
                    </ul>
                </li>
                <li rel="menu4" style="color: 
                rgb(247, 193, 45);">고객센터 
                    <ul class="sub">
                        <br>
                        <li><a href="#">인사말</a></li>
                    </ul>
                </li>
                <li rel="menu5" style="color: 
                rgb(247, 193, 45);">마이페이지 
                </li>
            </ul>
            <ul class="menu_right">
                <li>
                    <div id="memberlogin" onclick="memberLogin();">로그인</div>
                </li>
                <li>
                    <a href="#">회원가입</a>
                </li>
            </ul>
        </div>
    <script>
    $(function(){
        $('.sub').hide();
    });
    
    $(function(){
        $(".menu li").mouseover(function(){
            $(this).children(".sub").stop().slideDown(200);
        });
        $(".menu li").mouseleave(function(){
            $(this).children(".sub").stop().slideUp(200);
        });
    });
    
    function greetInfo() {
    	location.href = "${pageContext.request.contextPath}/views/companyAbout/greetings.jsp";
    }
    
    function memberLogin() {
    	location.href = "${pageContext.request.contextPath}/views/member/loginForm.jsp";
    }
    </script>
 	</header>