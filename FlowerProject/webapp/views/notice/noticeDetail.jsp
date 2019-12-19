<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<c:import url="../common/commonUtil.jsp"/>
<style>

a{
  text-decoration: none;
}

p, li, a, pre{
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
	/* padding: 10px; */
	background : rgba(20, 20, 20, 0.5);
	color : snow;
	padding-right: 40px; /**/
	padding-left: 40px;
	margin-left: 380px;
    margin-right: 250px; /**/
	
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

hr {
	background : snow;
	border-style : solid;
}

#title {
	font-size: 20px;
}

pre {
	color: snow;
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
        <!-- <div class="row justify-content-center text-center"> -->
        <div>
        	
	<%-- <c:if test="${ !empty admin }"> --%>
	
		<br /><br />
		<h2 align="center" style="padding-bottom: 50px; 
			border-bottom: 1px solid snow; font-weight: 900;">공지사항
		</h2>
		
		<div class="tableArea">
			<table width="1060px"> <!-- 800 -->
				<tr>
					<td colspan="5" style="padding-bottom: 13px; padding-top: 12px;
					 	border-bottom: 1px solid snow;" align="left">
						<span id="title">${notice.n_title}</span>
					</td>
				</tr>
				<tr>
					<td style="padding-bottom: 8px; padding-top: 8px;  border-bottom: 1px solid snow;">
						<span>작성일:${notice.n_date}</span>
					</td>
				</tr>
				<tr>
					<td colspan="6" style="padding-top: 50px;" align="center">
						<p id="content">${notice.n_content}</p>
					</td>
				</tr>
			</table>
			
			<br /><br /><br /><br /><br />
			<br /><br /><br /><br /><br /> 
			<br /><br /><br /><br /><br /> <!--  -->
			
		</div>
		<div align="center">
			<button class="btn btn-outline-light" 
					onclick="location.href='${pageContext.request.contextPath }/selectList.no'">목록으로
			</button>
			<%-- <c:if test="${ !empty admin }"> --%>
				<c:url var="noticeUpdate" value="nUpView.no">
					<c:param name="nno" value="${notice.n_no}"/>
				</c:url>
			<button  class="btn btn-outline-light" 
					 onclick="location.href='${noticeUpdate}'">수정하기
			</button>
			
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			
			<%-- </c:if> --%>
		</div>
		</div>
		<!-- </div> -->
	 	</div>
	</section>
	
	<%-- </c:if> --%>

	<c:import url="../common/footer.jsp" />
</body>
</html>