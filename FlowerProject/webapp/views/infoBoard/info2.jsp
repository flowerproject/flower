<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
 	<c:import url="../common/commonUtil.jsp" /> 
    <link href="${pageContext.request.contextPath }/resources/css/info2.css" rel="stylesheet">
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
	</div><hr style="border: solid 5px gold;">
<!--------------------------------------------- 아래부터 내용 ---------------------------------------------------------->
	
<div class="how-section1">
    <div class="row">
        <div class="col-md-6 how-img">
            <img src="../../resources/images/info2_1.jpg" alt=""/>
        </div>
        <div class="col-md-6">
            <h4>상조서비스 란?</h4>
               	<h4 class="subheading">상조서비스란 어떤 보장이나 보험 혜택을 받는 것이 이니라. 고객의 선택에 따라 계약상품을 선택하고, 그 상품의 계약금액을 조금씩 나누어 내거나 장례가 끝난 후 일시불로 정산하는 상품입니다.</h4>
        <p class="text-muted">상조서비스는 장례에 필요한 용품. 예를 들면 고인을 위한 관이나 수의를 비롯하여 의전행사에 필요한 상복이나 기타 장의용품들을 모두 제공하고, 장례기간 동안 파견되어 모든 예법의 주관에서부터 각종 행정업무까지 지원하여 편리성을 제공하는 서비스 입니다.</p>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-6">
            <h4>상조서비스는 언제 가입하면 좋은가요?</h4>
                        <h4 class="subheading">일반적으로 상조서비스의 가입을 고려하기 시작하는 연령대는 30대 후반에서 40대이며, 가장 적극적인 연령대는
부모님이 대부분 고희를 넘기신 50대입니다. 하지만 가능하면 상조서비스에 미리 가입하는 것이 좋다고 말합니다.</h4>
                        <p class="text-muted"><br />그 이유는 크게 세 가지 입니다. <br /><br />

첫째. 장례는 대부분 예상치 못한 상황에서 갑작스럽게 맞이하기 때문입니다. <br>
둘째. 상조상품은 가입 당시 계약한 금액으로 평생 이용할 수 있어, 물가 상승에 대한 대비가 가능합니다. <br>
셋째. 대부분 부모님의 장례를 염두에 두고 상조에 가입하지만, 부모 대신 자신의 친지나 지인의 장례가 발생했을 경우에도 상조서비스 실행을 요청할 수 있기 때문입니다.</p>
        </div>
        <div class="col-md-6 how-img">
            <img src="../../resources/images/info2_2.jpg" class="rounded-circle img-fluid" alt=""/>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-6 how-img">
             <img src="../../resources/images/info2_3.jpg" class="rounded-circle img-fluid" alt=""/>
        </div>
        <div class="col-md-6">
            <h4>상조서비스, 어떤 부분을 확인해야 할까?</h4>
                        <p class="text-muted">1. 자산규모와 자본금 등 상조 업체의 재무상황 확인한다. <br>
2. 소비자피해보상보험 계약체결 및 선불식 할부거래업체 등록업체인지 확인한다.<br>
3. 표준약관을 준수 상황과 중도 해약 시, 체계적인 환불시스템 유무를 체크한다.<br>
4. 계약조건을 충분히 설명 듣고, 서비스 내용을 꼼꼼히 확인한다.<br>
5. 향후 분쟁에 대비, 계약서와 소비자피해보상보험계약 증서 등의 서류를 잘 보관한다.</p>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-6">
            <h4>상조서비스, 어떤 부분을 확인해야 할까?</h4>
              <p class="text-muted">
              	6. 전문 인력으로 안정적인 장례서비스를 제공하고 있는지 확인한다. <br>
                7. 가입하려는 상조서비스 상품가격이 적정한 수준인지, 타 회사와 비교해본다. <br>
                8. 계약 후, 계약을 취소하고 싶을 때는 계약일로부터 14일 이내에 서면으로 청약을 철회한다. <br>
                9. 해당업체의 이용후기 등을 통해 노잣돈, 수고비 등의 부당 요금을 청구사례가 있는지 확인한다. <br>
                10. 부가서비스 등 계약 시, 추가로 받을 수 있는 혜택들이 있다면 참고한다.
              </p>
        </div>
        <div class="col-md-6 how-img">
            <img src="../../resources/images/info2_4.jpg" class="rounded-circle img-fluid" alt=""/>
        </div>
    </div>
</div>
	
	
        
<!--------------------------------------------- 내용 끝 -------------------------------------------------------------->	
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