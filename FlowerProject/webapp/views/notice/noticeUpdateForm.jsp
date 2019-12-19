<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 화면</title>
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
<c:import url="../common/header.jsp"/>

<section class="outer">
	<div class="noticeArea container">
	
	<section>
	<br /><br />
	<h2 align="center" style="font-weight: 700;">게시판 수정</h2>
	<br /><br />
	<div class="tableArea">
		<form method="post" id="updateForm">
			<table align="center">
				<tr>
					<td>제목</td>
					<td colspan="3">
						<input type="text" size="50"
						name="title" value="${ notice.n_title }"/>
						<input type="hidden" name="nno" value="${ notice.n_no }" />
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3">
						<textarea name="content" cols="50" rows="15" style="resize:none;">${notice.n_content}</textarea>
					</td>
				</tr>
			</table>
			<br />
			<div align="center">
				<button class="btn btn-outline-light" onclick="completeUpdate();">수정완료</button>
				<button class="btn btn-outline-light" onclick="deleteNotice();">삭제하기</button>
			</div>
			<script>
            
            	function completeUpdate() {
            		$('#updateForm').attr("action", "${pageContext.request.contextPath}/update.no");
            	}
            	function deleteNotice() {
            		alert('정말 삭제할까요?');
            		$('#updateForm').attr("action", "${pageContext.request.contextPath}/delete.no");
            	}
            	
            </script>
		</form>
	</div>
	</section>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</section>

<c:import url="../common/footer.jsp"/>
</body>
</html>