<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html lang="en">

<head>
    <!------------------------------------------------------------------------------------->
    <!-- Header Navbar-->
    <!------------------------------------------------------------------------------------->
    <c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<!-------------------------------------------------------------------------------------------->
<!-- BODY ------------------------------------------------------------------------------------>
<!-------------------------------------------------------------------------------------------->
<body class="sidebar-mini fixed">
    <!-- BODY 전체 Wrapper -->
    <div class="wrapper">
        <!------------------------------------------------------------------------------------->
        <!-- Header Navbar-->
        <!------------------------------------------------------------------------------------->
        <c:import url="/WEB-INF/views/include/header.jsp"/>
        <!------------------------------------------------------------------------------------->
        <!-- Side-Nav-->
        <!------------------------------------------------------------------------------------->
        <c:import url="/WEB-INF/views/include/side.jsp"/>
        <!------------------------------------------------------------------------------------->
        <!-- MAIN Content-->
        <!------------------------------------------------------------------------------------->
        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- 메뉴경로 start -->
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <div class="main-header">
                            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                                <li class="breadcrumb-item"><a href="#"><i class="icofont icofont-home"></i></a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">Home</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">아파트정보</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">서울지역</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">상세정보</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->
                <!-- 아파트정보 세부정보 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card dashboard-product font-weight-bold text-center">
                            <div class="row" id="info-display-table">
                                <div class="table-responsive tableFixHead" style="overflow:auto">
                                    <table class="table table-hover table-sm">
                                    <c:forEach var="i" begin="1" end="1">	
                                        <tr>
                                            <td class="text-center bg-success text-white td-with-20" >아파트명</td>
                                            <td id="map_aptname" class="td-with-35">SH대치1단지 아파트</td>
                                            <td class="text-center bg-success text-white td-with-20">건축년도</td>
                                            <td class="td-with-35">1991</td>						  			
                                        </tr>
                                        <tr>
                                            <td class="text-center bg-success text-white">도로명주소</td>
                                            <td id="map_road" colspan="3" class="text-left ps-2">서울특별시 강남구 개포로109길 5</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center bg-success text-white">지번주소</td>
                                            <td colspan="3" class="text-left ps-2">서울특별시 강남구 개포동 12</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center bg-success text-white">동갯수</td>
                                            <td>6</td>
                                            <td class="text-center bg-success text-white">세대수</td>
                                            <td><fmt:formatNumber value="822"/></td>						  			
                                        </tr>						  		
                                        <tr>
                                            <td class="text-center bg-success text-white">난방방식</td>
                                            <td>지역난방</td>
                                            <td class="text-center bg-success text-white">복도유형</td>
                                            <td>복도식</td>						  			
                                        </tr>					 	  		
                                        <tr>
                                            <td class="text-center bg-success text-white">시공사</td>
                                            <td>삼익건설</td>
                                            <td class="text-center bg-success text-white">주차대수</td>
                                            <td><fmt:formatNumber value="276"/></td>						  			
                                        </tr>	
                                    </c:forEach>						  						  							  		
                                    </table>								  	
                                </div>
                            </div>
                            <div class="row " >
                                <form action="/aptInfo/aptInfoDetail" method="post" name="aptform" >
                                    <div class="table-responsive tableFixHead" style="overflow:auto">
                                        <table class="table table-bordered table-hover table-sm">									
                                            <tr>
                                                <td class="text-white text-center bg-danger td-with-20 align-middle" >거래구분</td>
                                                <td class="td_width-40">
                                                    <select class="form-select" id="s_kind2" name="s_kind2">
                                                        <option value="" disabled selected hidden="hidden">거래구분...</option>
                                                        <option ${(kind2 == "매매")?"selected":"" } value="매매">매매</option>
                                                        <option ${(kind2 == "전세")?"selected":"" } value="전세">전세</option>
                                                        <option ${(kind2 == "월세")?"selected":"" } value="월세">월세</option>		
                                                    </select>								  			
                                                </td>
                                                <td class="text-white text-center bg-danger td-with-20 align-middle">평형</td>
                                                <td class="td_width-35" >
                                                    <select class="form-select" id="scale2" name="scale2">
                                                        <option value="" disabled selected hidden="hidden">평형...</option>
                                                        <option value="전체">전체</option>
                                                        <c:forEach var="s" items="${scales }">
                                                        <option value="${s.scale }">${s.scale }평</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="info-display-kind">	
                                        <input type="hidden" name="city_do2" value="${city_do2 }">
                                        <input type="hidden" name="city_gu2" value="${city_gu2 }">
                                        <input type="hidden" name="dong_gu2" value="${dong_gu2 }">
                                        <input type="hidden" name="apt_name2" value="${apt_name2 }">
                                        <input type="hidden" name="kind2" value="${kind2 }">
                                    </div>	
                                </form>		
                            </div>	
                            <div class="row">
                                <div class="table-responsive tableFixHead" style="height:calc(100vh - 475px); overflow:auto">
                                    <table class="table table-bordered table-hover table-sm">
                                        <thead class="stylish-color text-center text-white sticky-top" >
                                            <tr>
                                                <th>계약일자</th>
                                                <th>전용면적</th>
                                                <th>평수</th>
                                                <th>거래금액</th>
                                                <th>층</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="i" begin="1" end="5">
                                            <tr>
                                                <td class="text-center">2021-06-15</td>
                                                <td class="text-center">49</td>
                                                <td class="text-center">20</td>
                                                <td class="text-right">185,000</td>
                                                <td class="text-center">6</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>	
                        </div>
                    </div>   
                    <div class="col-lg-7 bg-white border rounded border-light mb-4" id="info-map">
                        <div class="row" >
                            <div class="row">
                                <div class="col-md-3 form-check form-switch">
                                    <input class="distance form-check-input" type="checkbox" id="flexSwitchCheckDefault" name="distance">
                                    <label class="form-check-label" for="flexSwitchCheckDefault">거리재기</label>
                                </div>
                                <div class="col-md-3 form-check form-switch">
                                    <input class="bigshow form-check-input" type="checkbox" id="flexSwitchCheckDefault2" name="bigshow">
                                    <label class="form-check-label" for="flexSwitchCheckDefault2">크게보기</label>
                                </div>						
                            </div>		
                            <div id="map2" >
                                <div class="map_wrap" style="height:calc(100vh - 250px);">
                                    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
                                </div>						    
                            </div>				    
                        </div>
                    </div>         
                </div>
            </div>
        </div> 
    </div>
    <!------------------------------------------------------------------------------------->
    <!-- Footer --> 
    <!------------------------------------------------------------------------------------->
    <c:import url="/WEB-INF/views/include/footer.jsp"/>
    <!------------------------------------------------------------------------------------->
    <!-- bottom --> 
    <!------------------------------------------------------------------------------------->
    <c:import url="/WEB-INF/views/include/bottom.jsp"/>
       <!-- daum kakao map js -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ce2a2fb95b876b792b3dc4e9d5eaef7&libraries=services"></script>
    <script src="${pageContext.request.contextPath}/js/daummap.js"></script>
</body>
</html>
