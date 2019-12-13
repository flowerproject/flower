<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  
    <script src="../../resources/js/jquery-3.4.1.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="../../resources/css/memInForm.css">
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
    <!------ Include the above in your HEAD tag ---------->
    <title>회원가입</title>
</head>
<body>
    
      
        
        <div class="container">
            <div class="row">
            <div class="col-md-8">
              <section>      
                <h1 class="entry-title"><span>가입하기</span> </h1>
                <hr>
                    <form class="form-horizontal" method="post" name="cjoinForm" id="cjoinForm"
                    action="${pageContext.request.contextPath }/insert.me">        
                <div class="form-group">
                  <label class="control-label col-sm-3">아이디<span class="text-danger">*</span></label>
                  <div class="col-md-8 col-sm-9">
                      <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                      <input type="text" class="form-control" name="c_id" id="c_id" placeholder="아이디" value="">
                    <button type="button" id="idCheck" >중복확인</button>
                    <!-- <button tpye="button" id="idCheck">중복확인</button> -->
                    </div>
                    <small> 귀하의 ID는 귀하의 계정 보안, 인증 및 액세스 복구를 보장하는 데 사용됩니다. </small> </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3">비밀번호 <span class="text-danger">*</span></label>
                  <div class="col-md-5 col-sm-8">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input type="password" class="form-control" name="c_password" id="c_password" placeholder="비밀번호 (5-15자리 숫자포함)" value="">
                   </div>   
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">비밀번호 확인 <span class="text-danger">*</span></label>
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
                    <input type="text" class="form-control" name="c_name" id="c_name" placeholder="이름" value="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">생년월일 <span class="text-danger">*</span></label>
                  <div class="col-xs-8">
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
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">성별 <span class="text-danger">*</span></label>
                  <div class="col-md-8 col-sm-9">
                    <label>
                    <input name="c_gender" type="radio" value="M" checked>
                    남 </label>
                       
                    <label>
                    <input name="c_gender" type="radio" value="F" >
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
                  <label class="control-label col-sm-3">관심사</label> <br />
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
                  <br /><br />
                  </div>
                  </form>
                  </section>
                </div>
               


                </div>

                <!-- Button trigger modal -->
                <input type="checkbox" style="width:25px; height:25px;" name="checkConst" id="checkConst1" onclick="return false"/>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
        이용약관
      </button>
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">홈페이지 이용약관</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                        
                    <h3 class="titDepth2">
                            제1조 (목적)
                        </h3>
                        <p class="descTxt1">
                            이 약관은 인터넷상에 제공하는 모든 서비스의 이용조건 및 절차에 관한 기본적인 사항을 정함을 목적으로 합니다.
                        </p>
                        <h3 class="titDepth2 marT25">
                            제2조 (용어의 정의)
                        </h3>
                        <ul class="listType1">
                            <li>
                                이 약관은 인터넷상에 제공하는 모든 서비스의 이용조건 및 절차에 관한 기본적인 사항을 정함을 목적으로 합니다.
                                <ul class="listType2">
                                    <li>
                                        "서비스"라 함은 당사가 제공하는 인터넷상의 모든 서비스(전자우편 포함)를 말합니다.
                                    </li>
                                    <li>
                                        "꽃가람 회원"(이하 "회원"이라 함)이라 함은 본 보람상조 가 제공하는 서비스를 이용하기로 하여 필요한 이용자ID와 비밀번호를 설정하여 당사와의<br />서비스이용계약을 체결한 자를 말합니다.
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT15">
                            제3조 (적용범위)
                        </h3>
                        <p class="blType1">
                            이 약관은 당사가 인터넷상에 제공하는 모든 서비스의 이용 및 절차, 기타 필요한 사항에 적용됩니다.
                        </p>
                        <h3 class="titDepth2 marT25">
                            제4조 (이용계약의 성립)
                        </h3>
                        <ul class="listType1">
                            <li>
                                이용계약은 회원이 되고자 하는 당사의 이용약관에 동의하고 회원개인정보를 기재하면 당사가 이에 대해 승낙함으로써 성립됩니다.
                            </li>
                            <li>
                                회원에 가입하고자 하는 자는 당사에서 요구하는 개인신상정보를 성실히 제공하여야 합니다.
                            </li>
                            <li>
                                당사는 회원으로 가입한 회원으로부터 사용자ID와 비밀번호를 등록받아 이를 관리하고 인터넷서비스 이용시에 사용자ID와 비밀번호등을 요구할 수 있습니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제5조 (이용신청)
                        </h3>
                        <ul class="listType1">
                            <li>
                                회원은 서비스에 접속하거나 서비스를 이용할 때에는 사용자ID와 비밀번호 등을 입력하여야 하며, 당사는 이를 회원이 신청한 사항과의일치 여부를 확인합니다.
                            </li>
                            <li>
                                당사는 다음 각호에 해당하는 이용신청에 대하여는 승낙을 유보할 수 있습니다.
                                <ul class="listType2">
                                    <li>
                                        설비에 여유가 없는 경우
                                    </li>
                                    <li>
                                        기술상 지장이 있는 경우
                                    </li>
                                    <li>
                                        기타 본사가 필요하다고 인정되는 경우
                                    </li>
                                </ul>
                            </li>
                            <li>
                                당사는 다음 각호의 1에 해당하는 이용신청에 대하여는 이를 승낙하지 아니할 수 있습니다.
                                <ul class="listType2">
                                    <li>
                                        성명이 회원의 실명이 아닌 경우
                                    </li>
                                    <li>
                                        다른 사람의 명의를 사용하여 신청한 경우
                                    </li>
                                    <li>
                                        이용 신청시 필요한 내용을 허위로 기재하여 신청한 경우
                                    </li>
                                    <li>
                                        사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
                                    </li>
                                    <li>
                                        기타 본사가 정한 이용신청요건에 미비되었을 경우
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT15">
                            제6조 (서비스의 이용 및 제한)
                        </h3>
                        <ul class="listType1">
                            <li>
                                서비스의 이용시간은 연중무휴 1일 24시간 이용을 원칙으로 합니다.
                            </li>
                            <li>
                                전항의 이용시간에 불구하고 통신장애, 서비스개발, 정기점검 등의 불가피한 사유에 의해 서비스 제공이 일정기간 동안 제한되거나 중단될수 있습니다.
                            </li>
                            <li>
                                당사는 서비스 이용의 제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 전자우편, 전화, 서면 등의 방법에 의하여 해당 이용자에게 통지합니다.<br />다만, 당사가 긴급하게 이용을 정지할 필요가 있다고 인정하는 경우에는 그러하지 아니합니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제7조 (정보의 제공)
                        </h3>
                        <p class="blType1">
                            당사는 회원에게 서비스의 이용 및 각종 행사 등의 다양한 서비스를 제공할 수 있습니다.
                        </p>
                        <h3 class="titDepth2 marT25">
                            제8조 (회사의 의무)
                        </h3>
                        <ul class="listType1">
                            <li>
                                당사는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다.
                            </li>
                            <li>
                                당사는 시스템의 점검 및 업그레이드, 통신두절, 기타 불가항력적인 사고 등 특별한 사정이 없는 한 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.
                            </li>
                            <li>
                                당사는 이용자의 개인신상정보를 본인의 승낙없이 타인에게 누설, 제공하여서는 아니됩니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제9조 (회원의 의무)
                        </h3>
                        <ul class="listType1">
                            <li>
                                인터넷회원은 자신의 사용자ID와 비밀번호 관리에 관한 일체의 책임은 회원 본인에게 있습니다.<br />회원에게 부여된 사용자ID와 비밀번호를 제3자에게 대여 또는 양도하거나 이와 유사한 행위를 하여서는 아니되며, 사용자ID와 비밀번호의 관리 소홀로 발생 하는<br />모든 책임은 회원 본인에게 있습니다.
                            </li>
                            <li>
                                회원은 자신의 사용자ID가 부정하게 사용된 경우에 즉시 자신의 비밀번호를 바꾸고 그 사실을 회사에 통보하여야 합니다.
                            </li>
                            <li>
                                회원은 이 약관 및 관계법령에서 규정한 사항을 성실히 준수하여야 합니다.
                            </li>
                            <li>
                                회원은 회사에 본인의 신상관련 사항이 변경되었을 때는 인터넷을 통하여 수정, 추가해야 합니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제10조 (서비스 이용권리의 양도등)
                        </h3>
                        <ul class="listType1">
                            <li>
                                회원은 서비스의 이용권리를 제3자에게 대여하거나 양도하여서는 아니됩니다.
                            </li>
                            <li>
                                회사가 회원에게 서비스와 관련하여 제공하는 일체의 내용 및 이와 관련된 권리는 회사에 귀속되어 있으므로 당사의 동의없이 임의로 제3자에게 제공하여서는<br />아니됩니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제11조 (이용약관의 효력 및 변경)
                        </h3>
                        <ul class="listType1">
                            <li>
                                이 약관의 내용은 특별한 규정이 없는 한 당사가 제공하는 인터넷서비스 화면상에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력을 발생합니다.
                            </li>
                            <li>
                                당사는 영업상의 중요한 사유나 기타 필요하다고 인정되는 합리적인 사유가 발생할 경우에는 이 약관의 일부 또는 전부를 변경할 수 있으며, 이 경우 당사는 당해<br />변경 내용을 인터넷상의 공지화면으로 처리합니다.
                            </li>
                            <li>
                                전항의 방법으로 변경 고지된 약관은 기존의 회원에게도 유효하게 효력이 발생합니다.
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT25">
                            제12조 (계약의 해지와 사용중지)
                        </h3>
                        <ul class="listType1">
                            <li>
                                당사는 회원이 다음 각호의 1에 해당하는 행위를 하였을 경우에는 이용 계약을 해지하거나 서비스의 이용을 중지할 수 있습니다.
                                <ul class="listType2">
                                    <li>
                                        이 약관 및 서비스 이용에 관련된 관계법령을 위반한 사실이 밝혀진 경우
                                    </li>
                                    <li>
                                        서비스의 이용목적에 불합리한 용도로 이용하는 경우
                                    </li>
                                    <li>
                                        공공의 이익을 저해할 목적으로 서비스를 이용하는 경우
                                    </li>
                                    <li>
                                        사용자ID와 비밀번호 등 회원의 비밀사항을 타인에게 누설하거나 타인의 사용자 ID와 비밀번호등을 도용하는 경우
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT15">
                            제13조 (면책)
                        </h3>
                        <ul class="listType1">
                            <li>
                                당사는 다음 각호의 사유로 인하여 회원에게 발생한 손해에 대해서는 책임지지 아니합니다.<br />다만, 당사가 책임있다고 판단되는 상당한 인과관계가 있는 경우에는 그러하지 아니합니다.
                                <ul class="listType2">
                                    <li>
                                        통신기기, 회선 및 컴퓨터의 장애나 거래의 폭주 등 부득이한 사정으로 서비스를 제공하지 못하거나 서비스제공이 지연된 경우
                                    </li>
                                    <li>
                                        회원이 사용자ID, 비밀번호등을 본인의 관리소홀로 인해 제3자에게 누출한 경우
                                    </li>
                                    <li>
                                        회원의 전산조작이나 업무처리의 오류 등으로 인한 경우
                                    </li>
                                    <li>
                                        기타 천재지변 등의 불가피한 사유로 인한 경우
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <h3 class="titDepth2 marT15">
                            제14조 (약관위반시 책임)
                        </h3>
                        <p class="blType1">
                            당사와 회원은 이 약관을 위반함으로써 발생하는 모든 책임을 각자 부담하며, 이로 인하여 상대방에게 손해를 입힌 경우에는 지체없이 배상하여야 합니다.
                        </p>
                        <h3 class="titDepth2 marT25">
                            제15조 (준용)
                        </h3>
                        <p class="blType1">
                            이 약관에 명시되지 아니한 사항이나 약관의 해석에 관한 사항에 대하여는 관계법령 또는 상관례에 따릅니다.
                        </p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="checkBtn(1);">동의</button>
            </div>
          </div>
        </div>
      </div>
      <br><br>
      <!-- Button trigger modal -->
      <input type="checkbox" style="width:25px; height:25px;" name="checkConst" id="checkConst2" onclick="return false"/>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong1">
        개인정보 처리방침
      </button>
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">개인정보 처리방침</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
          <h3 class="titDepth1">
                            총칙
                        </h3>
                        <hr>
                        <ul class="listType1">
                            <li>
                                꽃가람㈜은(는) 『개인정보보호법』 및 『정보통신망이용촉진등에관한법률』에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
                            </li>
                            <li>
                                꽃가람㈜은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
                            </li>
                        </ul>
                        
                        <h3 class="titDepth1">
                            개인정보의 처리 목적
                        </h3>
                        <hr>
                        <p>
                            꽃가람㈜은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
                        </p>
                       
                        <h4 class="titDepth2 marT25">
                            고객에 대한 계약체결, 계약이행 및 재화 또는 서비스 제공
                        </h4>
                        
                        <p>
                            청약신청, 서비스계약체결, 명의변경, 납부금 관리, 개인별 납입현황 안내, 각종 고지 . 통지 등 계약의 이행 및 제도 안내, 만족도 설문조사, 서비스 이용에 대한 통계, 이벤트 안내, 물품배송 등 서비스의 제공과 관련한 목적으로 개인정보를 처리합니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            민원사무 처리
                        </h4>
                        <p>
                            민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락 . 통지, 처리결과 통보 등의 목적으로 개인정보를 처리합니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            정보변경 및 판촉활동
                        </h4>
                        <p>
                            보유정보최신화, 상품서비스 안내 및 이용권유, 시장조사 및 상품서비스 연구개발, 판촉활동, 사은품 발송(배송) 등의 목적으로 개인정보를 처리합니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            홈페이지 가입 및 관리
                        </h4>
                        <p>
                            고객의 가입의사 확인, 서비스 제공에 따른 본인 식별 . 인증, 서비스 부정이용 방지, 각종 고지 . 통지 등을 목적으로 개인정보를 처리합니다.
                        </p>
                        <hr>
                        <h3 class="titDepth1">
                            개인정보의 처리 및 보유 기간
                        </h3>
                        <p>
                            꽃가람㈜은(는) 법령에 따라 개인정보 보유•이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            개인정보 수집항목
                        </h4>
                        <p>
                            ※ 개인정보 수집방법 : 홈페이지 온라인 부금상품 계약신청, 온라인 가입상담, 고객의 소리, 사원게시판 등을 위해 마련된 개인정보 입력란에 회원 본인이 직접 입력하는 방식
                        </p>
                        <ul class="listType1">
                            <li>
                                웹회원가입
                                <p class="blType2">
                                    필수항목 : 이름, 휴대전화, 생년월일, 성별, 이메일
                                </p>
                            </li>
                            <li>
                                무료상담신청
                                <p class="blType2">
                                    필수항목 : 이름, 휴대전화
                                </p>
                            </li>
                            <li>
                                온라인상담
                                <p class="blType2">
                                    필수항목 : 이름, 휴대전화, 이메일
                                </p>
                            </li>
                            <li>
                                행사후기
                                <p class="blType2">
                                    필수항목 : 이름, 휴대전화, 이메일
                                </p>
                            </li>
                            <li>
                                부금상품가입
                                <ul class="listType2">
                                    <li>
                                        필수항목 : 이름, 생년월일, 성별, 휴대전화, 주소(자택주소 또는 직장주소), 이메일주소, 결혼유무(서비스상품의 전환[상조상품에서 웨딩상품 전환 등]), 가입경로, CMS 정보( 성명, 계약자와의 관계, 생년월일, 성별, 금융기관명, 계좌번호, 이체일자)
                                    </li>
                                    <li>
                                        선택항목 : 일반전화 등 부가정보
                                    </li>
                                </ul>
                            </li>
                            <li>
                                입사지원
                                <ul class="listType2">
                                    <li>
                                        필수항목 : 사진, 이름(한글,한자,영문), 취미, 희망근무지, 생년월일, 결혼여부, 종교, 특기, 지원업무, 본적, 원적, 호주, 관계, 전화번호, 휴대전화번호, 성별, 이메일, 주소, 가족사항(성명, 연령, 관계, 학력, 직업, 근무처),신체사항(신장, 혈액형, 체중, 건강, 과거병력, 시력, 색명),재산, 주거, 희망급여, 추천인, 관계, 학력사항(학교명, 소재지, 졸업년월, 학위, 전공과목, 학점), 자기소개서, 면접질문사항
                                    </li>
                                    <li>
                                        선택항목 : 경력사항(회사명, 소재지, 근무기간, 직위 및 직종, 최종급료), 병역사항(군별, 병과, 계급, 복무기간), 자격/면허사항(자격종류,취득일, 만료일, 발행기관,자격증번호), O/A능력(엑셀,워드, 파워포인트)
                                    </li>
                                </ul>
                            </li>
                            <li>
                                홈페이지 접속정보 및 서비스 이용정보
                                <p class="blType2">
                                    쿠키, 접속로그, 접속 IP 정보
                                </p>
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            개인정보 처리 및 보유 기간
                        </h4>
                        <ul class="listType1">
                            <li>
                                관련 법령(상법, 국세기본법, 법인세법, 전자상거래 등에서의 소비자 보호에 관한 법률 등)에 의한 정보 보유 관련법령 보존기간 목록표 보유 사항 보존 기간)
                                <ul class="listType2">
                                    <li>
                                        계약 또는 청약철회 등에 관한 기록 (거래종료일로부터 5년)
                                    </li>
                                    <li>
                                        대금결제 및 재화 등 공급에 관한 기록 (거래종료일로부터 5년)
                                    </li>
                                    <li>
                                        소비자 불만 또는 분쟁처리에 관한 기록 (거래종료일로부터 3년)
                                    </li>
                                    <li>
                                        서비스(상조, 웨딩, 크루즈)안내 및 이용권유 (거래종료일로부터 5년)
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            개인정보의 제3자 제공
                        </h3>
                        <p>
                            꽃가람㈜은(는) 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
                        </p>
                        <p>
                            꽃가람㈜은(는) 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            제공받는자
                        </h4>
                        <p class="blType1">
                            꽃가람㈜
                                        </p>
                        <h4 class="titDepth2 marT25">
                            제공 항목
                        </h4>
                        <p class="blType1">
                            성명, 성별, 생년월일, 전화번호, 주소, 회원(사원)번호, 상품계약정보(계약상품명, 납부회차, 총납부액, 잔액 등), 상품결재정보, 계좌번호, 금융기관명
                        </p>
                        <h4 class="titDepth2 marT25">
                            이용 목적
                        </h4>
                        <p class="blType1">
                            콘텐츠 제공, 구매 및 요금 결제 물품배송 또는 청구지 등 발송, 금융거래 본인 인증 및 금융서비스, 요금추심, 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달, 신규 서비스(제품) 개발 및 특화, 접속 빈도 파악 또는 회원의 서비스
                        </p>
                        <h4 class="titDepth2 marT25">
                            보유 및 이용기간
                        </h4>
                        <p class="blType1">
                            해당서비스 가입일~해지일까지
                        </p>
                        <p>
                            ※위 제공받는 자는 해당 법인의 법인명이 변경되어도 동일하게 적용됩니다.<br>개인정보는 제공된 날로부터 동의 철회 시 또는 제공된 목적을 달성할 때까지 보유, 이용됩니다.<br>동의 철회 또는 제공된 목적 달성 후에는 위에 기재된 이용목적과 관련된 사고조사, 분쟁해결, 민원처리, 법령상 의무이행을 위하여 필요한 범위 내에서만 보유, 이용됩니다.
                        </p>
                        <hr>
                        <h3 class="titDepth1">
                            개인정보 처리의 위탁
                        </h3>
                        <p>
                            꽃가람㈜은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                        </p>
                        <ul class="listType1">
                            <li>
                                 수탁업체 : 나이스신용평가㈜<br>위탁업무내용 : 간편인증(이름,생년월일), 휴대폰 본인인증(CI, DI 생성)<br>보유 및 이용기간 : 위탁계약 종료 시 까지
                            </li>
                        </ul>
                        <p>
                            위 수탁업체는 해당 법인의 법인명이 변경되어도 동일하게 적용됩니다.
                        </p>
                        <hr>
                        <h3 class="titDepth1">
                            정보주체의 권리 행사
                        </h3>
                        <ul class="listType1">
                            <li>
                                정보주체는 꽃가람㈜에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
                                <ul class="listType2">
                                    <li>
                                        개인정보 열람요구
                                    </li>
                                    <li>
                                        오류 등이 있을 경우 정정 요구
                                    </li>
                                    <li>
                                        삭제요구
                                    </li>
                                    <li>
                                        처리정지 요구
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="listType1">
                            <li>
                                권리 행사는 꽃가람㈜에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 꽃가람㈜은(는) 이에 대해 지체 없이 조치하겠습니다.
                            </li>
                            <li>
                                정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 꽃가람㈜은(는) 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
                            </li>
                            <li>
                                권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
                            </li>
                            <li>
                                개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
                            </li>
                            <li>
                                개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
                            </li>
                            <li>
                                정보주체 권리에 따른 열람의 요구, 정정, 삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            처리하는 개인정보의 항목
                        </h3>
                        <p>
                            꽃가람㈜은(는) 다음의 개인정보 항목을 처리하고 있습니다.
                        </p>
                        <ul class="listType1">
                            <li>
                                 수집 정보 : 성명, 생년월일, 성별, 공제회원번호, 음성DATA, 휴대폰인증<br>수집 목적 : 서비스 이용에 따른 본인 식별 절차에 이용 등
                            </li>
                            <li>
                                 수집 정보 : 주소(자택, 직장), 연락처(휴대폰, 자택, 직장), E-mail<br>수집 목적 : 계약서 송부, 고지사항 전달 본인 의사 확인, 불만처리 등
                            </li>
                            <li>
                                 수집 정보 : 계좌(카드)번호 등 금융거래정보<br>수집 목적 : 납부금액 자동이체(CMS,신용카드 등)
                            </li>
                        </ul>
                        <p>
                            ※위 정보는 가입 당시 정보뿐만 아니라 정보 수정으로 변경된 정보를 포함합니다.
                        </p>
                        <h3 class="titDepth1">
                            개인정보의 파기 절차,기한 및 방법
                        </h3>
                        <p class="descTxt1">
                            꽃가람㈜는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다.<br>파기절차 및 방법은 다음과 같습니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            파기절차
                        </h4>
                        <ul class="listType1">
                            <li>
                                이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다.
                            </li>
                            <li>
                                이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            파기기한
                        </h4>
                        <ul class="listType1">
                            <li>
                                이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            파기방법
                        </h4>
                        <ul class="listType1">
                            <li>
                                전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
                            </li>
                            <li>
                                종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            개인정보의 안전성 확보 조치
                        </h3>
                        <p class="descTxt1">
                            꽃가람㈜는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
                        </p>
                        <h4 class="titDepth2 marT25">
                            정기적인 자체 감사 실시
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보 취급 관련 안정성 확보를 위해 정기적(연 2회)으로 자체 감사를 실시하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            개인정보 취급 직원의 최소화 및 교육
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            내부관리계획의 수립 및 시행
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            해킹 등에 대비한 기술적 대책
                        </h4>
                        <ul class="listType1">
                            <li>
                                해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신•점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            접속기록의 보관 및 위변조 방지
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            개인정보에 대한 접근 제한
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            문서보안을 위한 잠금장치 사용
                        </h4>
                        <ul class="listType1">
                            <li>
                                해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신•점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
                            </li>
                        </ul>
                        <h4 class="titDepth2 marT25">
                            비인가자에 대한 출입 통제
                        </h4>
                        <ul class="listType1">
                            <li>
                                개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            개인정보 보호책임자
                        </h3>
                        <p class="descTxt1">
                            꽃가람㈜는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
                        </p>
                        <ul class="listType1">
                            <li>
                                성 명 : 대표 Daniel Yu
                            </li>
                            <li>
                                소 속 : 꽃가람㈜
                            </li>
                            <li>
                                전화 번호 : 1588-7979
                            </li>
                            <li>
                                e-mail : powerrrrr@flower.com</a>
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            권익침해 구제방법
                        </h3>
                        <p class="descTxt1">
                            정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의하실 수 있습니다.<br>(아래의 기관은 개인정보보호 종합지원시스템과는 별개의 기관으로서, 꽃가람㈜의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다)
                        </p>
                        <ul class="listType1">
                            <li>
                                개인정보 침해신고센터 (한국인터넷진흥원 운영)
                                <ul class="listType2">
                                    <li>
                                        소관업무 : 개인정보 침해사실 신고, 상담 신청
                                    </li>
                                    <li>
                                        홈페이지 : privacy.kisa.or.kr
                                    </li>
                                    <li>
                                        전화 : (국번없이) 118
                                    </li>
                                    <li>
                                        주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터
                                    </li>
                                </ul>
                            </li>
                            <li>
                                개인정보 분쟁조정위원회 (한국인터넷진흥원 운영)
                                <ul class="listType2">
                                    <li>
                                        소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
                                    </li>
                                    <li>
                                        홈페이지 : privacy.kisa.or.kr
                                    </li>
                                    <li>
                                        전화 : (국번없이) 118
                                    </li>
                                    <li>
                                        주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터
                                    </li>
                                </ul>
                            </li>
                            <li>
                                대검찰청 사이버범죄수사단
                                <ul class="listType2">
                                    <li>
                                        홈페이지 : www.spo.go.kr
                                    </li>
                                    <li>
                                        전화 : 02-3480-3571
                                    </li>
                                    <li>
                                        이메일 : cybercid@spo.go.kr
                                    </li>
                                </ul>
                            </li>
                            <li>
                                경찰청 사이버테러대응센터
                                <ul class="listType2">
                                    <li>
                                        홈페이지 : www.netan.go.kr
                                    </li>
                                    <li>
                                        전화 : 1566-0112
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <p>
                            또한, 개인정보의 열람, 정정 . 삭제, 처리정지 등에 대한 정보주체자의 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익을 침해 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.<br>※ 중앙행정심판위원회(www.simpan.go.kr)의 전화번호 안내 참조
                        </p>
                        <hr>
                        <h3 class="titDepth1">
                            아동의 개인정보보호
                        </h3>
                        <ul class="listType1">
                            <li>
                                꽃가람㈜은(는) 만 14세 미만 아동(이하 '아동')이 제공한 개인정보로 인하여 아동 및 법정대리인이 불이익을 입지 않도록 보호 조치를 취하고 있습니다.
                            </li>
                            <li>
                                꽃가람㈜은(는) 아동의 개인정보에 대하여 아래의 행위를 하는 경우에는 해당 아동의 법정대리인의 동의를 얻도록 하고 있습니다.
                                <ul class="listType2">
                                    <li>
                                        아동의 서비스가입을 위한 개인정보 수집하거나 서비스 가입 시 고지한 범위 또는 서비스이용약관에 명시한 범위를 넘어 이동의 개인정보를 이용하거나 제3자에게 제공하고자 하는 경우
                                    </li>
                                    <li>
                                        아동의 개인정보를 제공받은 자가 개인정보를 제공받은 목적 외의 용도로 이용하거나 제3자에게 제공하는 경우다.
                                    </li>
                                </ul>
                            </li>
                            <li>
                                꽃가람㈜은(는) 법정대리인의 동의를 얻기 위하여 법정대리인의 성명, 연락처 등 필요한 최소한의 정보를 요구할 수 있습니다.<br>이 경우 개인정보의 수집 . 이용 또는 제공 목적 및 법정대리인의 동의가 필요하다는 취지를 아동이 쉽게 이해 할 수 있는 평이한 표현으로 아동에게 고지합니다.
                            </li>
                            <li>
                                법정대리인의 동의를 얻기 위하여 수집한 법정대리인의 개인정보를 해당 법정대리인의 동의 여부를 확인하는 목적 외의 용도로 이를 이용하거나 제3자에게 제공하지 않습니다.
                            </li>
                        </ul>
                        <hr>
                        <h3 class="titDepth1">
                            쿠키운용(자동수집 장치의 설치 운영 및 그 거부에 관한 사항)
                        </h3>
                        <ul class="listType1">
                            <li>
                                꽃가람㈜은(는)일부 서비스에서 '쿠키'를 사용하고 있습니다. 쿠키란 웹 서버가 정보주체 컴퓨터로 전송하는 데이터 꾸러미로서 정보주체 컴퓨터의 메모리나 하드디스크에 저장됩니다.
                            </li>
                            <li>
                                꽃가람㈜은(는)쿠키를 사용하여 정보주체의 성명, ID, 이메일 등에 관한 정보를 찾아내며, 이 쿠키정보는 꽃가람 사이트를 방문하는 사용자 특성을 파악하기 위해 사용될 수 있습니다. 또한 타겟광고, 이벤트 행사를 위해서도 사용될 수 있습니다.
                            </li>
                            <li>
                                정보주체는 웹브라우저에 있는 옵션기능을 조정하여 쿠키에 대해 선택적으로 받아들일 수 있습니다. 사용자는 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 모든 쿠키를 거부할 수도 있습니다. 단, 고객이 쿠키 설치를 거부하였을 경우 서비스 이용에 불편이 있거나, 서비스 제공에 어려움이 있을 수 있습니다.
                            </li>
                            <li>
                                쿠키 설치 허용 여부 지정
                                <ul class="listType2">
                                    <li>
                                        Internet Explorer의 경우 : 웹 브라우저 상단의 도구 메뉴 &gt; 인터넷 옵션 &gt; 개인정보 &gt; 설정
                                    </li>
                                    <li>
                                        Chrome의 경우 : 웹 브라우저 우측의 설정 메뉴 &gt; 화면 하단의 고급 설정 표시 &gt; 개인정보의 콘텐츠 설정 버튼 &gt; 쿠키
                                    </li>
                                </ul>
                            </li>
                            <li>
                                꽃가람㈜은(는) 법정대리인의 동의를 얻기 위하여 법정대리인의 성명, 연락처 등 필요한 최소한의 정보를 요구할 수 있습니다.<br>이 경우 개인정보의 수집 . 이용 또는 제공 목적 및 법정대리인의 동의가 필요하다는 취지를 아동이 쉽게 이해 할 수 있는 평이한 표현으로 아동에게 고지합니다.
                            </li>
                            <li>
                                법정대리인의 동의를 얻기 위하여 수집한 법정대리인의 개인정보를 해당 법정대리인의 동의 여부를 확인하는 목적 외의 용도로 이를 이용하거나 제3자에게 제공하지 않습니다.
                            </li>
                        </ul> 
            
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="checkBtn(2);">동의</button>
            </div>
          </div>
        </div>
      </div>

		<script>
		function checkBtn(btnNo){
			var btnName = 'checkConst' + btnNo;
			
			$('#'+btnName).prop('checked', true);

			var cnt = 0;
			$('[name=checkConst]').each(function(){
				if($(this).prop('checked') == true) cnt++;
			});
			
			if(cnt == 2) {
				$('[name=Submit]').prop('disabled', false);
			}
		}
		</script>
     

        </div>
         <br><br>
              <p>이용약관에 동의하셔야 회원 가입이 가능합니다.</p>
                <div class="form-group">
                
                  
                  <div class="col-xs-offset-3 col-xs-10">
                  <input name="Submit1" type="submit" value="메인으로" 
                  class="btn btn-primary" id="goMain" onclick="goMain();">
                    <input name="Submit" type="submit" value="회원가입" class="btn btn-primary" disabled
                    id="cjoinBtn" onclick="insertCustomer();">
                  </div>
                
                </div>
                
    </div>
    
    <script>
		function insertCustomer() {
				$("#cjoinForm").submit();
			}
    
		$("#joinForm").submit(function(event) {
			if ($("#c_password").val() == "" || $("#c_id").val() == "")
				alert("아이디나 비밀번호는 필수 값입니다.");
			else if ($('#c_password').val() != $('#cpassword').val())
				alert("비밀번호 확인 값과 다릅니다.");
			else
				return;
			event.preventDefault();
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
			location.href = '../../index.jsp';
		};
		
		
		$('#idCheck').click(function(){
			$.ajax({
				url : "${pageContext.request.contextPath}/idDup.me",
				type: "post",
				data : { c_id : $('#c_id').val()},
				success : function(data){
					if(data == 'true'){
						alert("사용 가능한 아이디입니다.");
					}else{
						alert("사용불가!");
						$('#c_id').val('');
					}
					
					
				}, error : function(request, status, error){
					console.log(request);
					console.log(status);
					console.log(error);
					
					console.log("에러 발생!!!!");
				}					
			});
		});
    </script>
    
    
	
	
	
	

</body>
</html>