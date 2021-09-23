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
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->    
                <!-- 공지사항 검색 start  p = page f = nFindSel q = nSearch -->
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <div class="col-xl-10 align-self-center">
                                <form action="/notice/notice" method="get">
                                    <div class="input-group">
                                        <select id="find-notice" class="form-select-ksy" name="nFindSel">
                                            <option ${(param.nFIndSel == "title")?"selected":"" } value="title">제목</option>
                                            <option ${(param.nFIndSel == "writer_id")?"selected":"" } value="writer_id">작성자</option>
                                        </select>
                                        <input type="text" class="form-control" name="nSearch" value="${param.nSearch }" placeholder="검색할 단어를 입력하세요">
                                        <button class="btn btn-outline-primary" type="button" name="nSearchCmd" id="nSearchCmd">검색</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>            
                </div>
                <!-- 공지사항 검색 end -->
                <!-- 공지사항 테이블 start--> 
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                            <form action="/notice/notice" method="post">
                                <div class="table-responsive" >
                                    <table class="table table-hover table-sm">
                                        <thead class="text-center text-white table-secondary_ksy" >
                                            <tr>
                                                <th>선택</th>
                                                <th>순번</th>
                                                <th>제목</th>
                                                <th>첨부</th>
                                                <th>작성자</th>
                                                <th>작성일</th>
                                                <th>조회수</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="n" items="${noticeList }">
                                            <tr>
                                                <td class="text-center">
                                                    <input type="checkbox" id="sel-id" name="sel-id" value="${n.id }">
                                                </td>	                   
                                                <td class="text-center">${n.id }</td>
                                                <td><a href="/notice/noticeDetail?id=${n.id }&page=${param.page}&nSearch=${param.nSearch}&nFindSel=${param.nFindSel}&h=${n.hit}">${n.title }</a></td>
                                                <td class="text-center text-warning-color"><c:if test="${n.files != null }"><i class="fas fa-link"></i></c:if></td>
                                                <td class="text-center">${n.writer_id }</td>
                                                <td class="text-center">${n.regdate }</td>
                                                <td class="text-right"><fmt:formatNumber value="${n.hit }"/> </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- 검색건수   --> 
                                <div class="row"> 
                                    <div class="col-sm-8">
                                        <c:set var="page" value="${(empty param.page)?1:param.page}"/>
                                        <c:set var="startNum" value="${page - (page-1)%5 }"/>			
                                        <c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/10),'.') }"/>			
                                        <div><span class="text-orange text-strong">${(empty param.page)?1:param.page}</span> of ${lastNum } pages(${count}건 검색 / 총 ${total_count}건 중)</div>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <a href="/notice/noticeInsert">
                                            <button type="button" class="btn btn-flat flat-success txt-success waves-effect waves-light w-100" name="cmd" value="insert">
                                                글쓰기
                                            </button>
                                        </a>        
                                    </div>
                                    <div class="col-sm-2">
                                        <button type="button" class="btn btn-flat flat-danger txt-danger waves-effect waves-light w-100" name="cmd" id="noticeDel" value="delete">
                                            삭제
                                        </button>  
                                    </div> 		          
                                </div>		
                                <!--페이징   --> 		          
                                <div class="row pt-2">  
                                    <nav aria-label="Standard pagination example">
                                        <ul class="pagination justify-content-center">    
                                            <li class="page-item">
                                                <a class="page-link" aria-label="first" href="?page=1&nFindSel=${param.nFindSel }&nSearch=${param.nSearch}">
                                                    <span aria-hidden="true" style="color:blue;font-weight: bold;">처음</span>
                                                </a>
                                            </li>	                                     
                                            <li class="page-item">
                                            <c:if test="${startNum > 1 }">	
                                                <a class="page-link" aria-label="Previous" href="?page=${startNum-1}&nFindSel=${param.nFindSel }&nSearch=${param.nSearch}">
                                                    <span aria-hidden="true">Previous</span>
                                                </a>
                                            </c:if>      
                                            <c:if test="${startNum <= 1 }">	
                                                <span class="page-link" onclick="alert('이전 페이지가 없습니다.');">Previous</span>
                                            </c:if>                										            
                                            </li>
                                            <c:forEach var="i" begin="0" end="4">
                                                <c:if test="${(startNum+i) <= lastNum }">
                                                    <li class="page-item ${page==(startNum+i)?'active':'' }"><a class="page-link" href="?page=${startNum+i}&nFindSel=${param.nFindSel }&nSearch=${param.nSearch}">${startNum+i}</a></li>
                                                </c:if>
                                            </c:forEach>		                  
                                            <li class="page-item">
                                            <c:if test="${lastNum > startNum+4 }">
                                                <a class="page-link" aria-label="Next" href="?page=${startNum+5}&nFindSel=${param.nFindSel }&nSearch=${param.nSearch}">
                                                    <span aria-hidden="true">Next</span>
                                                </a>
                                            </c:if>
                                            <c:if test="${lastNum <= startNum+4 }">
                                                <span class="page-link" onclick="alert('다음 페이지가 없습니다.');">Next</span>
                                            </c:if>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" aria-label="last" href="?page=${lastNum }&nFindSel=${param.nFindSel }&nSearch=${param.nSearch}">
                                                    <span aria-hidden="true" style="color:blue;font-weight: bold;">끝</span>
                                                </a>
                                            </li>	                  
                                        </ul>
                                    </nav>
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
