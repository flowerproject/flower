<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  
    <script src="../../resources/js/jquery-3.4.1.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="../../resources/css/memInForm.css">
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
    <!------ Include the above in your HEAD tag ---------->
     <c:import url="../common/commonUtil.jsp" />
    <title>회원가입</title>
    <style>
     h1{ color:black !important;}
    
    </style>
</head>
<body>
<c:import url="../common/header.jsp"/>

        <br /><br />
        <div class="container">
            <div class="row">
            <div class="col-md-8">
              <section>      
                <h1 class="entry-title"><span>수정하기</span> </h1>
                <hr>
                    <form id="cupdateForm" method="post"
                    action="${pageContext.request.contextPath }/update.cu">        
                <div class="form-group">
                  <label class="control-label col-sm-3">아이디<span class="text-danger">*</span></label><%-- <div>${Customer.c_id }</div> --%>
                  <div class="col-md-8 col-sm-9">
                      <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                      <%-- <input type="text" class="form-control" name="c_id" id="c_id" placeholder="${Customer.c_id }" value="" disabled> --%>
                      <div>${Customer.c_id }</div>
                    </div>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3">새 비밀번호 <span class="text-danger">*</span></label>
                  <div class="col-md-5 col-sm-8">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input type="password" class="form-control" name="c_password" id="c_password" placeholder="비밀번호 (5-15자리 숫자포함)" value="" required="required">
                   </div>   
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">새 비밀번호 확인 <span class="text-danger">*</span></label>
                  <div class="col-md-5 col-sm-8">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="비밀번호 확인" value="">
                    </div>  
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">이름 <span class="text-danger">*</span></label>
                  <div class="col-md-5 col-sm-8">
                    <%-- <input type="text" class="form-control" name="c_name" id="c_name" placeholder="${Customer.c_name}" value="" disabled> --%>
                    <div>${Customer.c_name}</div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">생년월일 <span class="text-danger">*</span></label>
                  <!-- <div class="col-xs-8">
                    <div class="form-inline">
                      <div class="form-group" >
                        <select name="yyyy" class="form-control">
                          <option value="0">년</option>
                          <option value="1955" >1955 </option><option value="1956" >1956 </option><option value="1957" >1957 </option><option value="1958" >1958 </option><option value="1959" >1959 </option><option value="1960" >1960 </option><option value="1961" >1961 </option><option value="1962" >1962 </option><option value="1963" >1963 </option><option value="1964" >1964 </option><option value="1965" >1965 </option><option value="1966" >1966 </option><option value="1967" >1967 </option><option value="1968" >1968 </option><option value="1969" >1969 </option><option value="1970" >1970 </option><option value="1971" >1971 </option><option value="1972" >1972 </option><option value="1973" >1973 </option><option value="1974" >1974 </option><option value="1975" >1975 </option><option value="1976" >1976 </option><option value="1977" >1977 </option><option value="1978" >1978 </option><option value="1979" >1979 </option><option value="1980" >1980 </option><option value="1981" >1981 </option><option value="1982" >1982 </option><option value="1983" >1983 </option><option value="1984" >1984 </option><option value="1985" >1985 </option><option value="1986" >1986 </option><option value="1987" >1987 </option><option value="1988" >1988 </option><option value="1989" >1989 </option><option value="1990" >1990 </option><option value="1991" >1991 </option><option value="1992" >1992 </option><option value="1993" >1993 </option><option value="1994" >1994 </option><option value="1995" >1995 </option><option value="1996" >1996 </option><option value="1997" >1997 </option><option value="1998" >1998 </option><option value="1999" >1999 </option><option value="2000" >2000 </option><option value="2001" >2001 </option><option value="2002" >2002 </option><option value="2003" >2003 </option><option value="2004" >2004 </option><option value="2005" >2005 </option><option value="2006" >2006 </option>                </select>
                      </div>
                      <div class="form-group">
                        <select name="mm" class="form-control">
                          <option value="">월</option>
                          <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>                </select>
                      </div>
                      <div class="form-group">
                        <select name="dd" class="form-control">
                          <option value="">일</option>
                          <option value="1" >1 </option><option value="2" >2 </option><option value="3" >3 </option><option value="4" >4 </option><option value="5" >5 </option><option value="6" >6 </option><option value="7" >7 </option><option value="8" >8 </option><option value="9" >9 </option><option value="10" >10 </option><option value="11" >11 </option><option value="12" >12 </option><option value="13" >13 </option><option value="14" >14 </option><option value="15" >15 </option><option value="16" >16 </option><option value="17" >17 </option><option value="18" >18 </option><option value="19" >19 </option><option value="20" >20 </option><option value="21" >21 </option><option value="22" >22 </option><option value="23" >23 </option><option value="24" >24 </option><option value="25" >25 </option><option value="26" >26 </option><option value="27" >27 </option><option value="28" >28 </option><option value="29" >29 </option><option value="30" >30 </option><option value="31" >31 </option>                </select>
                      </div>
                    </div>
                  </div> -->
                  <div>${Customer.c_birth}</div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">성별 <span class="text-danger">*</span></label>
                  <div class="col-md-8 col-sm-9">
                    <label>
                    <input type="radio" name="c_gender" value="M">
                    남 </label>
                       
                    <label>
                    <input type="radio" name="c_gender" value="F" >
                    여 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">주소 <span class="text-danger">*</span></label>
                  <div class="col-md-8 col-sm-9">
                		<input type="text" id="zipCode" name="zipCode" class="form-control label-warning" placeholder="우편 번호"/>
                      <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                      <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input type="text" id="address1" name="address1" class="form-control label-warning" placeholder="주소" />
                          </div>
                    <input type="text" class="form-control" id="address2" name="address2" placeholder="상세주소" value="">
                    <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <div id="ckZip"><button type="button" onclick="addrSearch();">검색</button></div>
                            
                            <!-- <div id="ckZip" onclick="addrSearch();">검색</div> -->
                          </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                        <label class="control-label col-sm-3">휴대폰<span class="text-danger">*</span></label>
                <div class="col-md-5 col-sm-8">
                        
                        <input type="text" name="c_phone" id="c_phone" class="form-control label-warning" placeholder="번호" />
                         <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <button>인증하기</button>
                              </div>
                                       
                      </div>
                    </div>
                <div class="form-group">
                        <label class="control-label col-sm-3">이메일<span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                        
                        <input type="text" name="c_email" id="c_email" class="form-control label-warning" placeholder="이메일" />
                         <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <button>인증하기</button>
                              </div>
                                       
                      </div>
                  </div>
                  
                  <div>
                  <label class="control-label col-sm-3">관심사</label> <br /> &nbsp; &nbsp;
                        <input type="checkbox" id="sanbenito" name="c_interest" value="수의">
						<label for="sanbenito">수의</label> 
						<input type="checkbox" id="distance" name="c_interest" value="장지 거리">
						<label for="distance">장지 거리</label>	
						<input type="checkbox" id="material" name="c_interest" value="관 소재">
						<label for="material">관 소재</label>	
						<input type="checkbox" id="price" name="c_interest" value="가격">
						<label for="price">가격</label>	
						<input type="checkbox" id="step" name="c_interest" value="장례 절차">
						<label for="step">장례 절차</label>	
                  </div>
                  </form>
                  </section>
                </div>
               


                </div>

                <!-- Button trigger modal -->
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
          
        </div>
      </div>
      
      <!-- Button trigger modal -->
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
          
      </div>

		
     

        </div>
         <br><br>
                <div class="form-group">
                
                  
                  <div class="col-xs-offset-3 col-xs-10">
                    <input name="Submit1" type="submit" value="메인으로" 
                    class="btn btn-primary" id="goMain" onclick="goMain();">
                    <input name="Submit" type="submit" value="수정하기" class="btn btn-primary"
                    id="cupdateBtn" onclick="updateCustomer();">
                    <input type="submit" name="Submit2" value="탈퇴하기"
                    class="btn btn-primary" id="cdeleteBtn" onclick="deleteCustomer();" />
                   
                  </div>
                </div>
                
                <script>

                $(function(){
                    $('input:radio').each(function(){
                       if( $(this).val() == '${Customer.c_gender}')
                         $(this).prop('checked', true);
                       else 
                         $(this).prop('checked', false);
                   });
                });
             
             // 참조 API : http://postcode.map.daum.net/guide
        		function addrSearch() {
        			new daum.Postcode(
        					{
        						oncomplete : function(data) {
        							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
        							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        							var fullAddr = ''; // 최종 주소 변수
        							var extraAddr = ''; // 조합형 주소 변수

        							// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
        								fullAddr = data.roadAddress;

        							} else { // 사용자가 지번 주소를 선택했을 경우(J)
        								fullAddr = data.jibunAddress;
        							}

        							// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
        							if (data.userSelectedType === 'R') {
        								//법정동명이 있을 경우 추가한다.
        								if (data.bname !== '') {
        									extraAddr += data.bname;
        								}
        								// 건물명이 있을 경우 추가한다.
        								if (data.buildingName !== '') {
        									extraAddr += (extraAddr !== '' ? ', '
        											+ data.buildingName
        											: data.buildingName);
        								}
        								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
        								fullAddr += (extraAddr !== '' ? ' ('
        										+ extraAddr + ')' : '');
        							}

        							// 우편번호와 주소 정보를 해당 필드에 넣는다.
        							$('#zipCode').val(data.zonecode); //5자리 새우편번호 사용

        							$('#address1').val(fullAddr);

        							// 커서를 상세주소 필드로 이동한다.
        							$('#address2').focus();
        						}
        					}).open();
        		};
                
                	function goMain() {
                		location.href='${pageContext.request.contextPath}/index.jsp'
                	}
                	
                	function updateCustomer() {
        				$("#cupdateForm").submit();
        			}
                	
	        		function deleteCustomer() {
	                    location.href = "/flower/delete.cn?mid=${Customer.c_id}";
	                 }
            
	        		$("#cupdateForm").submit(function(event) {
	        			if ($("#c_password").val() == "")
	        				alert("비밀번호는 필수 값입니다.");
	        			else if ($('#c_password').val() != $('#cpassword').val())
	        				alert("비밀번호 확인 값과 다릅니다.");
	        			else
	        				return;
	        			event.preventDefault();
	        		});
	        		
                </script>
                
    </div>
                <c:import url="../common/footer.jsp"/>
    
    
	
	
	
	

</body>
</html>