<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
 	<c:import url="../common/commonUtil.jsp" /> 
    <link href="${pageContext.request.contextPath }/resources/css/info.css?after" rel="stylesheet">
  </head>
  <style>
  .infomenu {text-align:center}
  .infomenu2 {
  	diplay:inline-blick;
  }
   .infobtn {
   		height:50px;
   		width: 200px;
   		border-top-left-radius: 5px !important; 
   		border-bottom-left-radius: 5px !important;
		border-top-right-radius: 5px !important; 
		border-bottom-right-radius: 5px !important;
		border:none !important;
 		background-position: right !important;
 		color:white;
        background: linear-gradient(to right, gold 50%, #333333 50%) no-repeat scroll right bottom / 210% 100% #333333 !important;
		-webkit-transition: all 200ms ease !important;
		-moz-transition: all 200ms ease !important;
		transition: all 200ms ease !important;
   	}
   	
   	.infobtn:hover, .infobtn.active {
 		background-position: left !important;
		color: #ffffff !important;
}
  
  </style>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
   	<div class="site-wrap">
 		<c:import url="../common/header.jsp"/>
 	<br />

	<div class="infomenu">
		<div class="infomenu2">
		    <button class="infobtn" type="submit" onclick="info1();"><b>장례절차 소개</b></button>
		    <button class="infobtn" type="submit" onclick="info2();"><b>상조서비스 소개</b></button>
		</div>
	</div>
	<hr style="border: solid 5px gold;">
	<br />

	
	<section class="container">
            <div class="section first">
              <div class="cont_title">
                <!-- <div class="letter-container">
                  <p class="lettering">Alaska, USA</p>
                </div> -->
                <h1>사망당일</h1><br><h3>운구 및 사망진단서 발급</h3>
              </div>
              <br /><br /><br />
              <div class="cont_desc">
                <p style="font-size: 3px;"> 병원에서 사망한 경우 장례식장으로 가기 전에 먼저 담당의사로부터 사망진단서(5통)를 발급받아 두는 것이 좋습니다. <br />
					사망신고, 묘지, 화장장, 의보, 연금, 보험회사 등에 필요합니다. <br />
					병원장례식장 직원이 운구용차로 장례식장까지 운구합니다. <br />
					병원외부에서 사망한 경우 장례식장을 예약한후 운구용 차량을 이용하여 장례식장으로 운구합니다. <br />
					이 경우  부에서 사망을 증명하는 서류를 받아오거나 혹은 병원 응급실을 경유하여 사망진단서나 시신검안서를 반드시 발급받아 가야합니다.</p>
              </div>
            </div>
            
            
            <div class="section">
              <div class="cont_title">
                <h1>사망당일</h1><br><h3>안치</h3>
              </div>
              <div class="cont_desc">
                <p style="font-size: 3px;">상주가 동행하여 호실을 확인한 후 안치실에 시신를 안실합니다.</p>
              </div>
            </div>
            
            
            <div class="section">
              <div class="cont_title">
                <h1>사망당일</h1><br><h3>빈소 마련</h3>
              </div>
              <br /><br />
              <div class="cont_desc">
                <p style="font-size: 3px;">장례식장 측과 상담하여 빈소를 지정 받고 장례식장 사용신청서 및 임대차계약서를 작성합니다. <br />
                                           빈소에는 단기 전화를 설치합니다. <br />
				       요금납부자의 성명, 주민등록번호,주소,연락처(전화번호)등을 알려주면 장례식장 직원이 전화국에 신청합니다. <br />
				       영정용 사진을 미리 준비하지 못했을 경우에는 고인의 일반 사진을 확대하여 사용합니다.</p>
              </div>
            </div>  
            
            
            <div class="section">
              <div class="cont_title">
                <h1>사망 2일차</h1>
              </div>
              <br />
              <div class="cont_desc">
                <p style="font-size: 3px;">가족과 친지는 장례식장 측과 상의하여 입관 시간을 정하고 장의용품을 준비합니다. <br />
				       사망진단서(사망증명서)나 시신검안서는 입관전에 반드시 사무실로 제출합니다.</p>
              </div>
            </div>
            
            
            <div class="section">
              <div class="cont_title">
                <h1>사망 3일차</h1>
                <br /><br />
              </div>
              <div class="cont_desc">
                <p style="font-size: 3px;">발인시간을 지정하여 알려주고 차량 예약후 (하루전) 이용료를 수납합니다. <br />
				       시신인수 및 확인 서명 후, 장례예식을 거쳐 발인합니다. <br />
				       장례는 가장 엄숙하면서도 소박하게 치러져야 합니다. <br />
				       진심으로 고인의 명복을 빌고 이별의 아픔을 나누는 자리가 바로 장례식이기 때문에 <br />
				       너무 사치스러워도 안되고 상혼에 예속되어서도 안됩니다.</p>
              </div>
            </div>
          </section>
        
        	
 		<c:import url="../common/footer.jsp" />
	</div>
	
	<script>
		function info1(){
			location.href='info.jsp'
		}
		
		function info2(){
			location.href='info2.jsp'
		}
	</script>
	
  </body>

</html>