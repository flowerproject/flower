<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<c:import url="../common/commonUtil.jsp"/>
<style>

a{
  text-decoration: none;
}

p, li, a{
  font-size: 17px;
}

/* CLEARFIX */

.cf:before,
.cf:after {
    content: " ";
    display: table;
}

.cf:after {
    clear: both;
}

.cf {
    *zoom: 1;
}

/* GENERAL STYLES */

.pagination{
  padding: 30px 0;
  display: inline-block;
}

.pagination ul{
  margin: 0;
  padding: 0;
  list-style-type: none;
}

.pagination a{
  display: inline-block;
  padding: 10px 18px;
  color: #222;
}

.noticeArea{
	padding: 10px;
	/* background : rgba(20, 20, 20, 0.4); */
	color : snow;
}
td {
	color : snow;
}

.paging a{
  width: 35px;
  line-height: 30px;
  padding: 0;
  text-align: center;
  margin: auto 5px;
  color : snow;
}

.paging a.is-active{
  margin-top:5px;
  border: 3px solid gold;
  border-radius: 100%;
}
</style>
</head>
<body>
	<c:import url="../common/header.jsp"/>
	<section class="ftco-blocks-cover-1">
        <div class="ftco-cover-1 overlay">
        	<div class="video-background">
        		<div class="video-foreground">
    				<div id="muteYouTubeVideoPlayer"></div>
    			</div>
    		<div class="video-film"></div>
			<script type="text/javascript" src="resources/js/typeit.min.js"></script>
			<script async src="https://www.youtube.com/iframe_api"></script>
			<script type="text/javascript">
			var player;
			function onYouTubePlayerAPIReady() {
			  player = new YT.Player('muteYouTubeVideoPlayer', {
			  	videoId: 'V2uIh1Fr6w4',
			  	playerVars: {
			  	      autoplay: 1,        // Auto-play the video on load
			  	      controls: 0,        // Show pause/play buttons in player
			  	      rel : 0,
			  	      start: 105,
			  	      end: 301,
			  	      showinfo : 0,
			  	      showinfo: 0,        // Hide the video title
			  	      modestbranding: 1,  // Hide the Youtube Logo
			  	      loop: 1,            // Run the video in a loop
			  	      playlist : 'V2uIh1Fr6w4',
			  	      fs: 0,              // Hide the full screen button
			  	      cc_load_policy: 0, // Hide closed captions
			  	      iv_load_policy: 3,  // Hide the Video Annotations
			  	      autohide: 1         // Hide video controls when playing
			  	    },
			  	events: {
			  	      onReady: function(e) {
			  	        e.target.mute();
			  	      }
			  		}
			  });
			}
			</script>
		</div>
		<div class="noticeArea container">
        <div class="row justify-content-center text-center">
          
            <div class="col-lg-10">
				
				<br>
			      <h2 align="center" style="font-weight: 900;">공지사항</h2>
			      <br>
			      <div class="tableArea">
			         <table class="table" align="center" id="listArea">
			         <tr>
			            <th style="color:snow;" width="30px">글번호</th>
			            <th style="color:snow;" width="300px">글제목</th>
			            <th style="color:snow;" width="150px">작성일</th>
			         </tr>
			         <c:forEach var="notice" items="${list}">
			         <!-- <tr style="font-weight : 700;"> -->
			         <tr>
			            <td>
			            <input type="hidden" value="${notice.n_no}">
			               ${notice.n_no}
			            </td>
			            <td>${notice.n_title}</td>
			            <td>${notice.n_date}</td>
			         </tr>
			         </c:forEach>
			      	 </table>
			      </div>
			      <br>
			      
			      <%-- <c:if test="${!empty admin}"> --%>
					<button type="button" class="btn btn-outline-light btn-md"
							onclick="location.href='views/notice/noticeInsertForm.jsp';">글쓰기
					</button>
				  <%-- </c:if> --%>
				  <br />
				
			      <%-- 페이지 처리 구현하기 --%>
			      
			      <div class="pagingArea pagination paging" align="center">
					<ul>
			      	  <!-- 처음 페이지 버튼 -->
			      	  <a href="${selectList}?currentPage=1"><li>&lt;&lt;</li></a>
			      	  
			      	  <!-- 이전 페이지 버튼 -->
			      	  <c:if test="${ pi.currentPage le 1 }"> <!-- le : <= -->
			      	  	  <a href="#"><li style="color : gold;">&lt;</li></a>
			      	  </c:if>
			      	  <c:if test="${ pi.currentPage gt 1 }">
				      	  <a href="${selectList}?currentPage=${pi.currentPage -1}"><li>&lt;</li></a>
			      	  </c:if>
			      	  
			      	  <!-- 상세 페이지 구현을 위한 반복문 -->
			      	  <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
			      	  	  <c:if test="${p eq pi.currentPage }">
			      	  	  	  <a class="is-active" href="#"><li style="color : gold;">${p}</li></a>
			      	  	  </c:if>
			      	  	  <c:if test="${ p ne pi.currentPage}">
			      	  		  <a href="${selectList}?currentPage=${p}"><li>${p}</li></a>
			      	  	  </c:if>
			      	  </c:forEach>
			      	  
			      	  <!-- 다음 페이지 버튼 -->
			      	  <c:if test="${ pi.currentPage ge pi.maxPage }">
			      	  	<a href="#"><li style="color : gold;">&gt;</li></a>
			      	  </c:if>
			      	  <c:if test="${ pi.currentPage lt pi.maxPage }">
			      	  	<a href="${selectList}?currentPage=${pi.currentPage +1}"><li>&gt;</li></a>
			      	  </c:if>
			      	  
			      	  <!-- 마지막 페이지 버튼 -->
			      	 <a href="${selectList}?currentPage=${pi.maxPage}"><li>&gt;&gt;</li></a>
			      	  </ul>
			      </div>
			      
			      <script>
			      $(function(){
			          $("#listArea td").mouseenter(function(){
			             $(this).parent().css({"background":"rgba(50,50,50,0.5)", "cursor":"pointer"});
			          }).mouseout(function(){
			             $(this).parent().css({"background":"rgba(0,0,0,0)"});
			          }).click(function(){
			             var nno = $(this).parent().find("input").val();
			             location.href="${pageContext.request.contextPath}/selectOne.no?n_no=" + nno;
			          });
			       });
			      </script>
			   </div>
			</div>
        </div>
      </div>
    </section>
   	<br /><br />
   	
	<c:import url="../common/footer.jsp"/>

</body>
</html>