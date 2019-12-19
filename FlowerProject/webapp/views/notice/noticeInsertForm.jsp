<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../common/commonUtil.jsp" />
<style>
.outer {
		background: #405D73;
		color: snow;
	}
.noticeArea {
		background : rgba(20, 20, 20, 0.4);
	}
</style>
</head>
<body>
	<c:import url="../common/header.jsp" />
	
	<section class="outer">
	<div class="noticeArea container">
	
      <br>
      <br />
      <h2 align="center">게시판 작성</h2>
      <div class="tableArea">
         <form action="${pageContext.request.contextPath }/insert.no" 
               method="post"> <!-- enctype: 인코드타입을 ~로 바꾸겠다. -->
            <table align="center">
               <tr>
                  <td>제목 </td>
                  <td colspan="3"><input type="text" size="50" name="title"></td>
                 <%--  <input type="hidden" name="c_Id" value="${customer.c_id}" /> --%>
               </tr>
               <tr>
                  <td>내용 </td>
                  <td colspan="3">
                     <textarea name="content" cols="50" rows="15" style="resize:none;"></textarea>
                  </td>
               </tr>
            </table>
            <br>
            <div align="center">
               <button type="reset" class="btn btn-outline-light">취소하기</button>
               <button type="submit" class="btn btn-outline-light">등록하기</button>
            </div>
         </form>
      </div>
      <br />
      <br />
      <br />
      <br />
   	</section>
	
	<c:import url="../common/footer.jsp" />
</body>
</html>