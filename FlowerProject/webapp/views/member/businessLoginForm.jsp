<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인</title>
    
  
<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<link href="../../resources/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="../../resources/css/login.css" rel="stylesheet">
<link rel="stylesheet" href="../../resources/js/login.js">

<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: underline;}
</style>

</head>
<body>

    <div class="container">
        <div class="overlay" id="overlay">
          <div class="sign-in" id="sign-in" style="padding: 0px;">
            <h2>꽃가람 회원이 아니라면?</h2>
            <p>회원가입 버튼을 눌러 회원가입 해주세요!</p>
            <button class="switch-button" id="slide-right-button" onclick="memberJoin()">회원가입</button>
          </div>
          <div class="sign-up" id="sign-up">
            
           
          </div>
        </div>
        <div class="form">
          <div class="sign-in" id="sign-in-info">
            <h1>로그인</h1>
            <div class="social-media-buttons">
              
            </div>
            
            <form id="sign-in-form">      
              
            </form>
          </div>
          <div class="sign-up" id="sign-up-info">
            <h1>기업 회원 로그인</h1>
            <div class="social-media-buttons">
  
            </div>
            <div>
      
      
      
            
        </div>
            <form id="sign-up-form" action="${pageContext.request.contextPath }/login1.me" method="post">
                <a href="${pageContext.request.contextPath }/views/member/memberLoginForm.jsp">일반회원 로그인</a> &nbsp;&nbsp;
              <a href="${pageContext.request.contextPath }/views/member/businessLoginForm.jsp">기업회원 로그인</a>
            <input type="text" placeholder="아이디" name="b_id"/>
              <input type="password" placeholder="비밀번호" name="b_password" />
              
              <button class="control-button up" id="loginArea" type="submit">로그인</button> <br>
              <a href="아이디 찾기">아이디 찾기</a>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <a href="비밀번호 찾기">비밀번호 찾기</a>
            </form>
          </div>
        </div>
      </div>
       
      <script>
      function login() {
    	  location.href = "${ pageContext.request.contextPath }/login1.me";
		}
      function memberJoin() {
			location.href = "${ pageContext.request.contextPath }/views/common/signUp.jsp";
		}
      </script>
</body>
</html>