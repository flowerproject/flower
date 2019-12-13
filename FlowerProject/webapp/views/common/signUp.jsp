<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
  <!-- bootstrap css include -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="../../resources/css/signUp.css" />
	<!-- bootstrap js include -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
    <c:import url="commonUtil.jsp" />
  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
   	<div class="site-wrap">
		<c:import url="header.jsp"/>
        	
        	  <section>

            <br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="../../resources/images/flowerProjectPoto.png" id="signUpLogo"> &nbsp; <span style="font-weight: bold; font-size: large;">회원가입</span> 
            <hr size="2" width="1300px" align="center" noshade>

        <br><br>

        <table align="center">
            <tr>
                <td style="padding-left:20px; border-right:1px solid gray; padding-right:12px; text-align:justify">
                    <a href="../member/memberJoinForm.jsp">
                        <img src="../../resources/images/일반 회원가입.png" id="signUpImg1">
                    </a>
                </td>
                <td style="padding-left:20px">
                    <a href="../member/BusinessJoinForm.jsp">
                        <img src="../../resources/images/기업 회원가입.png" id="signUpImg2">
                    </a>
                </td>
            </tr>

        </table>



    </section>
        	
        	
        	
		<c:import url="footer.jsp" />
	</div>
  </body>

</html>
        	
        	
        	
        