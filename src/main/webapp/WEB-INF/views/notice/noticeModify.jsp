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
                            <li class="breadcrumb-item"><a href="#">공지사항</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#">수정하기</a>
                            </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->
                <!-- 공지사항 타이틀 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3 text-center">
                            <p class="h4 text-secondary">공지사항 수정</p>
                            <div class="side-box ">
                                <i class="fas fa-edit text-info-color"></i>
                            </div>
                        </div>
                    </div>            
                </div>
                <!-- 공지사항 타이틀 end -->
                <!-- 공지사항 수정 start--> 
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form action="/notice/noticeModify" method="post">
                                <!-- 수정 -->
                                <div class="mb-3">
                                    <label for="noticeTitle" class="form-label form-control-label text-primary">제목</label>
                                    <input type="text" class="form-control" name="title" id="noticeTitle" value="사이트가 오픈되었습니다 1">
                                </div>
                                <div class="mb-3">
                                    <label for="noticeRegdate" class="form-label form-control-label text-primary">작성일</label>
                                    <input type="text" class="form-control" name="regdate" id="noticeRegdate" readonly value="2021-09-04">
                                </div>
                                <div class="mb-3">
                                    <label for="noticeFile1" class="form-label form-control-label text-primary">첨부파일</label>
                                    <input type="text" class="form-control" name="file1" id="noticeFile1" readonly value="1111.pdf">
                                </div>
                                <div class="mb-3">
                                    <label for="noticeFile2" class="form-label form-control-label text-primary">첨부파일</label>
                                    <input class="form-control" type="file" name='file2' id="noticeFile2">
                                </div>
                                <div class="mb-3">
                                    <label for="noticeContent" class="form-label form-control-label text-primary">내용</label>
                                    <textarea class="form-control" name="content" id="noticeContent" style="height: 180px;" >공지사항 상세내용입니다</textarea>
                                </div>
                                <!-- 저장, 목록버튼-->
                                <div class="row justify-content-center"> 
                                    <div class="col-md-3">
                                        <a href="/notice/noticeDetail">
                                            <button type="button" class="btn btn-flat flat-success txt-success waves-effect waves-light w-100" name="cmd" value="update">
                                                저장
                                            </button>
                                        </a>
                                    </div>        
                                    <div class="col-md-3">
                                        <a href="/notice/notice">
                                            <button type="button" class="btn btn-flat flat-primary text-primary waves-effect waves-light w-100" name="cmd" id="del" value="list">
                                                목록
                                            </button>  
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
