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
<%--    <c:import url="${pageContext.request.contextPath}/views/include/head.jsp"/>--%>
    <c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<!-------------------------------------------------------------------------------------------->
<!-- BODY ------------------------------------------------------------------------------------>
<!-------------------------------------------------------------------------------------------->
<body class="sidebar-mini fixed">
    <div class="loader-bg">
        <div class="loader-bar">
        </div>
    </div>
    <!-- BODY 전체 Wrapper -->
    <div class="wrapper">
        <!------------------------------------------------------------------------------------->
        <!-- Header Navbar-->
        <!------------------------------------------------------------------------------------->
<%--        <c:import url="${pageContext.request.contextPath}/include/header.jsp"/>--%>
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
                <!-- Row Starts -->
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <div class="main-header">
                            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                            <li class="breadcrumb-item"><a href="#"><i class="icofont icofont-home"></i></a>
                            </li>
                            <li class="breadcrumb-item"><a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#">Home page</a>
                            </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- Row end -->
                <!-- Main content row start -->
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="card dashboard-product font-weight-bold">
                            <span>공지사항</span>
                            <p class="m-2">1.아파트 거래정보 사이트가 오픈되었습니다.</p>
                            <p class="m-2">2.회원가입 절차 안내</p>
                            <p class="m-2">3.사이트 이용방법 안내</p>
                            <a href="/notice/notice" class="btn btn-primary">확인하러 가기</a>
                            <div class="side-box ">
                                <i class="far fa-bell text-primary-color"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="card dashboard-product font-weight-bold">
                            <span>8월 실거래가</span>
                            <p class="m-2">1.서울지역 매매 : 2,300건</p>
                            <p class="m-2">2.서울지역 전세 : 1,300건</p>
                            <p class="m-2">3.서울지역 월세 : 1,400건</p>
                            <a href="/realPrice/realPrice" class="btn btn-primary">확인하러 가기</a>
                            <div class="side-box ">
                                <i class="fas fa-won-sign text-warning-color"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="card dashboard-product font-weight-bold">
                            <span>8월 가격현황</span>
                            <p class="m-2">1.신고가 : 253건</p>
                            <p class="m-2">2.상  승 : 332건</p>
                            <p class="m-2">3.하  락 : 200건</p>
                            <a href="#" class="btn btn-primary">확인하러 가기</a>
                            <div class="side-box ">
                                <i class="fab fa-amazon-pay text-danger-color"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="card dashboard-product font-weight-bold">
                            <span>8월 거래현황</span>
                            <p class="m-2">1.전월대비 증감(매매) : -2,320건</p>
                            <p class="m-2">2.전월대비 증감(전세) : +1,300건</p>
                            <p class="m-2">3.전월대비 증감(월세) : +1,400건</p>
                            <a href="/trade/tradeStatus" class="btn btn-primary">확인하러 가기</a>
                            <div class="side-box ">
                                <i class="fas fa-trademark text-info-color"></i>
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
</body>

</html>
