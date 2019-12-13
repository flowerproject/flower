<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
    <c:import url="../common/commonUtil.jsp" />
    <style>
    body {
    background: #dedede;
}
.page-wrap {
    min-height: 100vh;
}
    </style>
<!------ Include the above in your HEAD tag ---------->
  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
      <div class="page-wrap d-flex flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">접근불가</span>
                <div class="mb-4 lead">에러 페이지입니다.
                       잘못된 접근입니다.
                </div>
                <a href="${pageContext.request.contextPath }/index.jsp" class="btn btn-link">홈으로 돌아가기</a>
            </div>
        </div>
    </div>
</div>
   
  </body>

</html>