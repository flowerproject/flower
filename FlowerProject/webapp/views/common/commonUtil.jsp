<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<title>꽃가람 - 소중한 분을 정성으로...</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/tmp/fonts/icomoon/style.css">

    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/bootstrap.min.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/jquery.fancybox.min.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/owl.carousel.min.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/owl.theme.default.min.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/aos.css">
 	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png">
    <!-- MAIN CSS -->
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/resources/tmp/css/style.css">
    
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
    
	<style>	
	.logo {
		width : 140px;
		height: auto;
	}
	
	.nav-link {
		color : snow !important;
	}
	
	/* 영상 관련 CSS */
	* { box-sizing: border-box; }
    .video-film{
    	box-shadow : rgba(0,0,0,0.7) 0 0 0 9999px;
		z-index : 100;
	}
    .video-background {
        background: #000;
        position: fixed;
        top: 0; right: 0; bottom: 0; left: 0;
        z-index: -99;
    }
    .video-foreground,
    .video-background iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        pointer-events: none;
    }
    @media (min-aspect-ratio: 16/9) {
    .video-foreground { height: 300%; top: -100%; }
    }
    @media (max-aspect-ratio: 16/9) {
    .video-foreground { width: 300%; left: -100%; }
    }
    h1{ color:white;}
    #visual-btn {
      margin:auto;
      z-index: 50;
	  color: #fff;
	  font-size: 20px;
	  border: 2px solid #fff;
	  padding: 12px 24px;
	  border-radius: 5px;
	  cursor: pointer;
	  background-color: rgba(0,0,0,0);
	}
	#visual-btn:hover {
	  color: #d5d4f7;
	  font-size: 20px;
	  border: 2px solid #d5d4f7;
	  padding: 12px 24px;
	  border-radius: 5px;
	  cursor: pointer;
	}
	#indexBtn {
    position: fixed;
    text-align: center
	}
	.center {   
	  justify-content: center;
	  position:absolute;
	  top:80%;
	  left:47%;
	  margin:-50px 0 0 -50px;
	}  
	</style>