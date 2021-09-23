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
                            <li class="breadcrumb-item"><a href="#">글쓰기</a>
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
                            <p class="h4 text-secondary">공지사항 글쓰기</p>
                            <div class="side-box ">
                                <i class="fas fa-pen text-info-color"></i>
                            </div>
                        </div>
                    </div>            
                </div>
                <!-- 공지사항 타이틀 end -->
                <!-- 공지사항 글쓰기 start--> 
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form action="/notice/noticeInsert" method="post">
                                <!-- 글쓰기 -->
                                <div class="mb-3">
                                    <label for="noticeTitle" class="form-label form-control-label text-primary">제목</label>
                                    <input type="text" class="form-control" name="title" id="noticeTitle" placeholder="제목을 입력하세요">
                                </div>
                                <div class="mb-3" id="fileDiv">
                                    <label for="noticeFile1" class="form-label form-control-label text-primary">첨부파일</label>
                                    <button type="button" class="btn btn-primary waves-effect waves-light ms-2 pb-1" id="addFile" data-bs-toggle="tooltip" data-bs-placement="top" title="첨부추가">
                                        <i class="fas fa-plus fa-sm"></i>
                                    </button>
                                    <button type="button" class="btn btn-danger waves-effect waves-light ms-2 pb-1" id="minusFile" data-bs-toggle="tooltip" data-bs-placement="top" title="첨부제거">
                                        <i class="fas fa-minus fa-sm"></i>
                                    </button>
                                    <input class="form-control mt-1" type="file" name="file" id="noticeFile1">
                                </div>
                                <div class="mb-3">
                                    <label for="noticeContent" class="form-label form-control-label text-primary">내용</label>
                                    <textarea class="form-control" name="content" id="noticeContent" style="height: 180px;" placeholder="내용을 입력하세요"></textarea>
                                </div>
                                <!-- 저장, 목록버튼-->
                                <div class="row justify-content-center"> 
                                    <div class="col-md-3">
                                        <a href="/notice/notice">
                                            <button type="button" class="btn btn-flat flat-success txt-success waves-effect waves-light w-100" name="cmd" value="insert">
                                                저장
                                            </button>
                                        </a>
                                    </div>        
                                    <div class="col-md-3">
                                        <a href="/notice/notice">
                                            <button type="button" class="btn btn-flat flat-primary text-primary waves-effect waves-light w-100" name="cmd" id="del" value="delete">
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
