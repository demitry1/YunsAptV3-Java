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
                            <li class="breadcrumb-item"><a href="#">로그인</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#">로그인</a>
                            </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->
                <!-- 로그인 타이틀 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3 text-center">
                            <p class="h4 text-secondary">로그인</p>
                            <div class="side-box ">
                                <i class="icon-login text-info-color"></i>
                            </div>
                        </div>
                    </div>            
                </div>
                <!-- 로그인 타이틀 end -->
                <!--로그인 start-->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form id="loginform" action="/login/loginCheck" method="post">
                                <div class="form-group mb-4">
                                    <label for="user" class="form-label form-control-label text-primary">아이디</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon1"><span class="fas fa-user"></span></span>
                                        <input type="text" class="form-control form-control-lg" placeholder="userid" id="user" name="userid" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group mb-4">
                                        <label for="password" class="form-label form-control-label text-primary">패스워드</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon2"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Password" name="password" class="form-control form-control-lg" id="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center mt-5 mb-3" >
                                    <div class="col col-12 col-sm-12 col-md-3 mb-1 " >
                                        <button type="submit" class="btn btn-success waves-effect waves-light w-100" name="cmd" value="login">Sign in</button>
                                    </div>
                                    <div class="col col-12 col-sm-12 col-md-3 mb-1">
                                        <button type="submit" class="btn btn-danger waves-effect waves-light w-100" name="cmd" value="forget">Forget Password</button>
                                    </div>
                                    <div class="col col-12 col-sm-12 col-md-3 mb-1">
                                        <a href="/login/join">
                                            <button type="button" class="btn btn-info waves-effect waves-light w-100" name="cmd" value="join">Join</button>
                                        </a>
                                    </div>
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
