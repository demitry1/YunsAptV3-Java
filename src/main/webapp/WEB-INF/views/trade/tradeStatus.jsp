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
                                <li class="breadcrumb-item"><a href="#">일자별</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->    
                <!-- 거래현황 일자별 검색 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                        
                            <div class="col-xl-12 align-self-center">
                                <form action="/trade/tradeStatus" method="get" name="f">
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
                                        <div class="col-lg-3 pb-1">
                                            <select class="form-select form-select-sm" id="apt_name" name="apt_name" >
                                                <option value="" disabled selected hidden="hidden">아파트명 선택...</option>
                                                <option ${(param.apt_name != null)?"selected":"" }>${param.apt_name} </option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 pb-1">
                                            <select class="form-select form-select-sm" id="datetype" name="datetype">
                                                <option value="" disabled selected hidden="hidden">검색기준...</option>
                                                <option ${(param.datetype == "1")?"selected":"" } value="1">일자별</option>
                                                <option ${(param.datetype == "2")?"selected":"" } value="2">월별</option>
                                                <option ${(param.datetype == "3")?"selected":"" } value="3">년도별</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 pb-1">
                                            <input type="text" name="contract_date1" class="datapicker form-select form-select-sm" id="datepicker" size="15" value="${param.contract_date1 }">
                                        </div>	
                                        <div class="col-md-2 pb-1">
                                            <input type="text" name="contract_date2" class="datapicker form-select form-select-sm" id="datepicker2" size="10" value="${param.contract_date2 }">
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
                <!-- 거래현황 일자별 검색 end -->
                <!-- 거래현황 일자별 테이블 start-->
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form action="/readPrice/realPrice" method="post">
                                <div class="table-responsive" >
                                    <table class="table table-hover table-sm">
                                        <thead class="text-center text-white table-secondary_ksy" >
                                            <tr>
                                                <th>년/월/일</th>
                                                <th>거래건수</th>
                                                <th>증감건수</th>
                                                <th>증감율</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="i" begin="1" end="10">	
                                            <tr>
                                                <td class="text-center">2021-07-20</td>
                                                <td class="text-right">20</td>
                                                <td class="text-right">2</td>
                                                <td class="text-right">12</td>
                                            </tr>
                                            </c:forEach>
                                            <!-- <c:forEach var="n" items="${list }">	
                                                <tr>
                                                    <td class="text-center" id="tradest" >${n.trade_dd }</td>
                                                    <td class="text-right pe-3"><fmt:formatNumber value="${n.trade_cnt }"/></td>
                                                    <c:if test="${n.change_rate < 0 }">
                                                    <td class="text-right pe-3 text-primary"><fmt:formatNumber value="${n.change_cnt }"/></td>
                                                    <td class="text-right pe-3 text-primary">${n.change_rate }</td>
                                                    </c:if>
                                                    <c:if test="${n.change_rate >= 0 }">
                                                    <td class="text-right pe-3 text-danger"><fmt:formatNumber value="${n.change_cnt }"/></td>
                                                    <td class="text-right pe-3 text-danger">${n.change_rate }</td>
                                                    </c:if>
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
