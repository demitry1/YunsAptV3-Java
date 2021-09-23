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
                                <li class="breadcrumb-item"><a href="#">거래현황</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">지역별</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->    
                <!-- 거래현황 지역별  검색 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                        
                            <div class="col-xl-12 align-self-center">
                                <form action="/trade/tradeArea" method="get" name="f">
                                    <div class="row">
                                        <div class="col-lg-2 pb-1">
                                            <select class="form-select form-select-sm" id="city_do" name="city_do">
                                                <option value="" disabled selected hidden="hidden">시(도) 선택...</option>
                                                <option ${(param.city_do != null)?"selected":"" }>${param.city_do} </option>
                                            </select>
                                            </div>
                                        <div class="col-lg-2 pb-1">
                                            <select class="form-select form-select-sm" id="city_gu" name="city_gu">
                                                <option value="" disabled selected hidden="hidden">구(시) 선택...</option>
                                                <option ${(param.city_gu != null)?"selected":"" }>${param.city_gu} </option>		                 
                                            </select>
                                        </div>
                                        <div class="col-lg-2 pb-1">
                                            <select class="form-select form-select-sm" id="dong_gu" name="dong_gu">
                                                <option value="" disabled selected hidden="hidden">동(구) 선택...</option>
                                                <option ${(param.dong_gu != null)?"selected":"" }>${param.dong_gu} </option>			                 
                                            </select>
                                        </div>
                                        <div class="col-md-2 pb-1">
                                            <select class="form-select form-select-sm" id="datetype" name="datetype">
                                                <option value="" disabled selected hidden="hidden">검색기준...</option>
                                                <option ${(param.datetype == "2")?"selected":"" } value="1">월별</option>
                                                <option ${(param.datetype == "3")?"selected":"" } value="2">년도별</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3 pb-1">
                                            <select class="form-select form-select-sm" id="search_year" name="search_year">
                                                <option value="" disabled selected hidden="hidden">검색년도...</option>
                                                <option ${(param.search_year == "2021")?"selected":"" } value="2021">2021년</option>
                                                <option ${(param.search_year == "2020")?"selected":"" } value="2020">2020년</option>
                                                <option ${(param.search_year == "2019")?"selected":"" } value="2019">2019년</option>
                                                <option ${(param.search_year == "2018")?"selected":"" } value="2018">2018년</option>
                                                <option ${(param.search_year == "2017")?"selected":"" } value="2017">2017년</option>
                                                <option ${(param.search_year == "2016")?"selected":"" } value="2016">2016년</option>
                                                <option ${(param.search_year == "2015")?"selected":"" } value="2015">2015년</option>
                                                <option ${(param.search_year == "2014")?"selected":"" } value="2014">2014년</option>
                                                <option ${(param.search_year == "2013")?"selected":"" } value="2013">2013년</option>
                                                <option ${(param.search_year == "2012")?"selected":"" } value="2012">2012년</option>
                                                <option ${(param.search_year == "2011")?"selected":"" } value="2011">2011년</option>
                                                <option ${(param.search_year == "2010")?"selected":"" } value="2010">2010년</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 pb-1">
                                            <select class="form-select form-select-sm" id="trade_gbn" name="trade_gbn">
                                                <option value="" disabled selected hidden="hidden">거래구분...</option>
                                                <option ${(param.trade_gbn == "1")?"selected":"" } value="1">매매</option>
                                                <option ${(param.trade_gbn == "2")?"selected":"" } value="2">전세</option>
                                                <option ${(param.trade_gbn == "3")?"selected":"" } value="3">월세</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-1 pb-1 align-self-end">
                                            <button type="submit" class="btn btn-flat flat-primary text-primary waves-effect waves-light w-100" id="tradeserach" value="normal" name="search">검 색</button>
                                        </div>	
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>            
                </div>
                <!-- 실거래가 검색 end -->
                <!-- 실거래가 테이블 start--> 
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form action="/readPrice/realPrice" method="post">
                                <div class="table-responsive" >
                                    <table class="table table-hover table-sm">
                                        <thead class="text-center text-white table-secondary_ksy" >
                                            <tr>
                                                <th>지역</th>
                                                <th id="th01">1월</th>
                                                <th id="th02">2월</th>
                                                <th id="th03">3월</th>
                                                <th id="th04">4월</th>
                                                <th id="th05">5월</th>
                                                <th id="th06">6월</th>
                                                <th id="th07">7월</th>
                                                <th id="th08">8월</th>
                                                <th id="th09">9월</th>
                                                <th id="th10">10월</th>
                                                <th id="th11">11월</th>
                                                <th id="th12">12월</th>
                                                <th>합계</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="i" begin="1" end="10">	
                                            <tr>
                                                <td class="text-center">노원구</td>
                                                <td class="text-right">1</td>
                                                <td class="text-right">2</td>
                                                <td class="text-right">3</td>
                                                <td class="text-right">4</td>
                                                <td class="text-right">5</td>
                                                <td class="text-right">6</td>
                                                <td class="text-right">7</td>
                                                <td class="text-right">8</td>
                                                <td class="text-right">9</td>
                                                <td class="text-right">10</td>
                                                <td class="text-right">11</td>
                                                <td class="text-right">12</td>
                                                <td class="text-right">123</td>
                                            </tr>
                                            </c:forEach>
                                            <!-- <c:forEach var="n" items="${list }">	
                                                <tr>
                                                    <td class="text-center" id="tradearea" >${n.area }</td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m01 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m02 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m03 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m04 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m05 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m06 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m07 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m08 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m09 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m10 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m11 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.m12 }"/></td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.total }"/></td>
                                                </tr>
                                            </c:forEach> -->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row mt-3 text-center">
                                    <span class="fw-bold text-danger">총 건수 : <fmt:formatNumber value="${tradetot }"/></span>
                                </div>
                            </form>
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
</body>
</html>
