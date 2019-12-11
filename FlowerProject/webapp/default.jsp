<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
    <c:import url="views/common/commonUtil.jsp" />
  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
   	<div class="site-wrap">
		<c:import url="views/common/header.jsp"/>
        	<h1>기본 페이지입니다.</h1>
        	<p>여기에 내용을 작성해 보세요!</p>
		<c:import url="views/common/footer.jsp" />
	</div>
  </body>

</html>