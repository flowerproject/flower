<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Required meta tags -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>관리자 페이지</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="node_modules/mdi/css/materialdesignicons.min.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- css 경로 -->
  <link rel="stylesheet" href="../../resources/tmp1/css/style.css">
  <!-- 홈페이지 목록에 보이는 파비콘 -->
  <link rel="shortcut icon" href="../../resources/images/favicon.png" />
   	<c:import url="../common/commonUtil.jsp"/>
</head>

<body>

  <div class="body-wrapper">
    <!-- 로고 쪽 수정 하는곳-->
    <aside class="mdc-persistent-drawer mdc-persistent-drawer--open">
      <nav class="mdc-persistent-drawer__drawer">
        <div class="mdc-persistent-drawer__toolbar-spacer">
          <a href="${pageContext.request.contextPath}/index.jsp" class="brand-logo">
						<img src="../../resources/images/flowerProjectPoto.png" alt="logo">
					</a>
					
		
					
        </div>
       
        <!-- 경계선 -->
        
             
        
        
        
        
        <div class="mdc-list-group">
          <nav class="mdc-list mdc-drawer-menu">
          
          <div class="mdc-list-item mdc-drawer-item"  data-toggle="expansionPanel" target-panel="sample-page-submenu">
              <a class="mdc-drawer-link" href="${pageContext.request.contextPath}/index.jsp">
                <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon" aria-hidden="true">home</i>
                	홈으로
               </a>
           </div>
          
          
          
          
            <div class="mdc-list-item mdc-drawer-item">
              <a class="mdc-drawer-link" href="${pageContext.request.contextPath}/views/adminPage/proStatus.jsp">
                <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon" aria-hidden="true">desktop_mac</i>
                	상품 현황
              </a>
            </div>
            
            
            
              <div class="mdc-list-item mdc-drawer-item"  data-toggle="expansionPanel" target-panel="ui-sub-menu">
              <a class="mdc-drawer-link" href="${pageContext.request.contextPath}/views/adminPage/proGrant.jsp">
                <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon" aria-hidden="true">dashboard</i>
                             상품 승인	
               
              </a>
            
            </div>
               
          
            
            
          <div class="mdc-list-item mdc-drawer-item">
              <a class="mdc-drawer-link" href="${ pageContext.request.contextPath }/logout.me" onclick='logoutal()'>
                <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon" aria-hidden="true">track_changes</i>
                	로그아웃
              </a>
            </div>
                 
             
           
            
          </nav>
        </div>
      </nav>
    </aside>
    <!-- 왼쪽 메뉴 바 -->
    
    <!-- partial -->
    <!-- partial:partials/_navbar.html -->
    <!-- partial -->
    
    <div class="page-wrapper mdc-toolbar-fixed-adjust"> 
	
      <main class="content-wrapper">
        <div class="mdc-layout-grid">
          <div class="mdc-layout-grid__inner">
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12">
              <div class="mdc-card">
                <div class="mdc-layout-grid__inner">
                  <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-7">
                    <section class="purchase__card_section">
                      <p>${Customer.c_name}님 환영합니다! <br />
                      	오늘도 좋은 하루가 되시길 바라요!</p>
                    </section>
                  </div>
                 
                </div>
              </div>
            </div>
            
            <!-- 경계선 -->
            
            
            
          
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4">
              <div class="mdc-card d-flex flex-column">
             	<div class="block-counter-1">
                    <span class="number"><span data-number="15"">내 정보 확인</span></span>
                    <span class="caption">가입정보와 관심사와 관련된 정보를 확인 하실 수 있습니다.</span> <br /><br />
                	<label><b>이름 : </b><span>${Customer.c_name}</span></label> <br />
                	<label><b>아이디 : </b><span>${Customer.c_id}</span></label> <br />
                	<label><b>비밀번호 : </b><span><button onclick="updatePwd();">비밀번호 변경</button></span></label>
                </div> <br /><br />
              </div>
            </div>
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4">
              <div class="mdc-card card--with-avatar">
                <section class="mdc-card__primary">
                  <div class="card__avatar"><img src="../../resources/tmp/images/다니엘.png" alt=""></div>
					<h1 class="mdc-card__title">대표이사님 훈화</h1>                 
                  <h1 class="mdc-card__title">Daniel Yu</h1>
                  <h2 class="mdc-card__subtitle">@danieyu</h2>
                  <span class="social__icon-badge mdc-twitter mdi mdi-twitter"></span>
                </section>
                <section class="mdc-card__supporting-text pt-1">
                  <p class="mb-1">여러분 할수 있어요 힘내세요!</p>
                  <p class="mb-2">처음에는 힘들지만 결국엔 해낼수 있습니다! <br />열심히 코딩하세요!</p>
                </section>
               
              </div>
            </div>
            
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4">
              <div class="mdc-card d-flex flex-column">
             	<div class="block-counter-1">
                    <span class="number"><span data-number="15">0</span>+</span>
                    <span class="caption">가입정보와 관심사와 관련된 정보를 확인 하실 수 있습니다.</span>
                  </div>
              </div>
            </div>
            
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4">
              <div class="mdc-card d-flex flex-column">
             	<div class="block-counter-1">
                    <span class="number"><span data-number="15">0</span>+</span>
                    <span class="caption">승인을 기다리는 상품들</span>
                  </div>
              </div>
            </div>
            
            
            
            
          </div>
        </div>
      </main>
      <!-- partial:partials/_footer.html -->
      <footer>
        <div class="mdc-layout-grid">
          <div class="mdc-layout-grid__inner">
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6">
              <span class="text-muted">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="icon-heart" aria-hidden="true"></i> Team.GENTLE'S in KH Academy 352 Class 
                <br> 
                This Web application is licensed under CC BY 3.0.</span>
            </div>
            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6 d-flex justify-content-end">
              <span class="mt-0 text-right">Hand-crafted &amp; made with <i class="mdi mdi-heart text-red"></i></span>
            </div>
          </div>
        </div>
      </footer>
      <!-- partial -->
    </div>
  </div>
  <!-- body wrapper -->
  <!-- plugins:js -->
  <script src="node_modules/material-components-web/dist/material-components-web.min.js"></script>
  <script src="node_modules/jquery/dist/jquery.min.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="node_modules/chart.js/dist/Chart.min.js"></script>
  <script src="node_modules/progressbar.js/dist/progressbar.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/misc.js"></script>
  <script src="js/material.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
  
  	<script>
var counter = function() {
		
		$('#about-section').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {

				var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(',')
				$('.number > span').each(function(){
					var $this = $(this),
						num = $this.data('number');
					$this.animateNumber(
					  {
					    number: num,
					    numberStep: comma_separator_number_step
					  }, 7000
					);
				});
				
			}

		} , { offset: '95%' } );

	}
	counter();

	
	function logoutal(){
		alert("로그아웃 합니다!");
		
	}
	
  	</script>
</body>

</html>