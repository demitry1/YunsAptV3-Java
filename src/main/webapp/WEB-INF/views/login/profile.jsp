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
                            <li class="breadcrumb-item"><a href="#">프로필</a>
                            </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->
                <!-- 프로필 타이틀 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3 text-center">
                            <p class="h4 text-secondary">프로필</p>
                            <div class="side-box ">
                                <i class="icon-user text-info-color"></i>
                            </div>
                        </div>
                    </div>            
                </div>
                <!--프로필 start-->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form id="joinform" action="/login/joinSave" method="post">
                                <div class="form-group mb-4">
                                    <label for="user" class="form-label form-control-label text-primary">아이디</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon1"><span class="fas fa-user"></span></span>
                                        <input type="text" class="form-control " placeholder="userid" id="user" name="userid" autofocus readonly >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group mb-4">
                                        <label for="password" class="form-label form-control-label text-primary">패스워드</label>
                                        <div class="input-group">
                                            <span class="input-group-text" ><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Password" name="password" class="form-control " id="password" >
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group mb-4">
                                        <label for="password" class="form-label form-control-label text-primary">패스워드 확인</label>
                                        <div class="input-group">
                                            <span class="input-group-text" ><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Password confirm" name="password2" class="form-control " id="password2" >
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="username">이름</label>
                                    <div class="input-group">
                                        <span class="input-group-text" ><span class="fas fa-user-tag"></span></span>
                                        <input type="text" class="form-control " placeholder="username" id="username" name="username" autofocus >
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="user">가입일</label>
                                    <div class="input-group">
                                        <span class="input-group-text" ><span class="fas fa-calendar-alt"></span></span>
                                        <input type="text" class="form-control" value="${regdate }" readonly="readonly" name="regdate" aria-label="Regdate" autofocus >
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="user">이메일</label>
                                    <div class="input-group">
                                        <span class="input-group-text" ><span class="fas fa-envelope"></span></span>
                                        <input type="text" class="form-control" placeholder="email" id="email" name="email" autofocus >
                                        <span class="input-group-text">@</span>
                                        <input type="text" class="form-control" placeholder="gmail.com" id="email2" name="email2" autofocus >
                                    </div>
                                </div>
                                <div class="row justify-content-center mt-5 mb-3" >
                                    <div class="col col-md-4">
                                        <button type="submit" class="btn btn-block btn-primary waves-effect waves-light w-100" id="profilesave" name="cmd" value="profilesave">수정</button>
                                    </div>
                                    <div class="col col-md-4">
                                        <a href="/index">
                                            <button type="button" class="btn btn-block btn-danger waves-effect waves-light w-100" name="cmd" value="profileconfirm">확인</button>
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
