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
                                <li class="breadcrumb-item"><a href="#">실거래가</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">매매</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- 메뉴경로 end -->    
                <!-- 실거래가정보  검색 start -->
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="card dashboard-product font-weight-bold mx-3">
                        
                            <div class="col-xl-12 align-self-center">
                                <form action="/realPrice/realPrice" method="get" name="f">
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
                                        <div class="col-lg-1 pb-1">
                                            <select class="form-select form-select-sm" id="scale" name="scale">
                                                <option value="" disabled selected hidden="hidden">평형 선택...</option>
                                                <option ${(param.scale == "1")?"selected":"" } value="1">전체</option>
                                                <option ${(param.scale == "2")?"selected":"" } value="2">40평이상</option>
                                                <option ${(param.scale == "3")?"selected":"" } value="3">30평~39평</option>
                                                <option ${(param.scale == "4")?"selected":"" } value="4">20평~29평</option>
                                                <option ${(param.scale == "5")?"selected":"" } value="5">20평미만</option>
                                            </select>
                                        </div>
                                            <div class="col-lg-1 pb-1">
                                            <select class="form-select form-select-sm" id="construction_year_info" name="construction_year">
                                                <option value="" disabled selected hidden="hidden">년도...</option>
                                                <option ${(param.construction_year == "1")?"selected":"" } value="1">전체</option>
                                                <option ${(param.construction_year == "2")?"selected":"" } value="2">3년이하</option>
                                                <option ${(param.construction_year == "3")?"selected":"" } value="3">5년이하</option>
                                                <option ${(param.construction_year == "4")?"selected":"" } value="4">10년이하</option>
                                                <option ${(param.construction_year == "5")?"selected":"" } value="5">15년이하</option>
                                                <option ${(param.construction_year == "6")?"selected":"" } value="6">20년이하</option>
                                                <option ${(param.construction_year == "7")?"selected":"" } value="7">25년이하</option>
                                                <option ${(param.construction_year == "8")?"selected":"" } value="8">30년이하</option>
                                                <option ${(param.construction_year == "9")?"selected":"" } value="9">30년초과</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 pb-1">
                                            <input type="text" name="contract_date1" class="datapicker form-select form-select-sm" id="datepicker" size="15" value="${param.contract_date1 }">
                                        </div>	
                                        <div class="col-md-2 pb-1">
                                            <input type="text" name="contract_date2" class="datapicker form-select form-select-sm" id="datepicker2" size="10" value="${param.contract_date2 }">
                                        </div>
                                        <div class="col-lg-1 pb-1">
                                            <select class="form-select form-select-sm" id="listcnt" name="listcnt">
                                                <option ${(param.listcnt == "40")?"selected":"" } value="40">40개</option>
                                                <option ${(param.listcnt == "20")?"selected":"" } value="20">20개</option>
                                                <option ${(param.listcnt == "60")?"selected":"" } value="60">60개</option>
                                                <option ${(param.listcnt == "80")?"selected":"" } value="80">80개</option>
                                                <option ${(param.listcnt == "100")?"selected":"" } value="100">100개</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-1 pb-1 align-self-end">
                                            <button type="submit" class="btn btn-flat flat-primary text-primary waves-effect waves-light w-100" id="realserach" value="normal" name="search">검 색</button>
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
                                                <th>시(도)</th>
                                                <th>구(시)</th>
                                                <th>동(구)</th>
                                                <th>아파트명</th>
                                                <th>계약일자</th>
                                                <th>전용면적</th>
                                                <th>평수</th>
                                                <th>거래금액</th>
                                                <th>층</th>
                                                <th>건축년도</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="i" begin="1" end="10">	
                                            <tr>
                                                <td class="text-center">서울특별시</td>
                                                <td class="text-center">강서구</td>
                                                <td class="text-center">화곡동</td>
                                                <td><a href="/aptInfo/aptInfoDetail">오경아파트 ${i} <span class="badge rounded-pill bg-success">New</span> </a></td>
                                                <td class="text-center">2021-07-20</td>
                                                <td class="text-center">25</td>
                                                <td class="text-center">11</td>
                                                <td class="text-center">29,800</td>
                                                <td class="text-center">7</td>
                                                <td class="text-center">1991</td>
                                            </tr>
                                            </c:forEach>
                                            <!-- <c:forEach var="n" items="${list }">	
                                                <tr>
                                                <td class="text-center">${n.city_do }</td>
                                                <td class="text-center">${n.city_gu }</td>
                                                <td class="text-center">${n.dong_gu }</td>
                                                <td class="text-center text-primary r_apt_name" id="r_apt_name"  style="cursor:pointer">${n.apt_name }</td>
                                                <td class="text-center">${n.contract_date }</td>
                                                <td class="text-center">${n.square }</td>
                                                <td class="text-center">${n.scale }</td>
                                                <td class="text-right"><fmt:formatNumber value="${n.trade_price }" /></td>
                                                <td class="text-center">${n.floor }</td>
                                                <td class="text-center">${n.construction_year }</td>
                                                </tr>
                                            </c:forEach> -->
                                        </tbody>
                                    </table>
                                </div>
                                <!-- 검색건수   --> 
                                <div class="row"> 
                                    <div class="col-sm-12">
                                        <c:set var="page" value="${(empty param.page)?1:param.page}"/>
                                        <c:set var="startNum" value="${page - (page-1)%5 }"/>			
                                        <c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/10),'.') }"/>			
                                        <div><span class="text-orange text-strong">${(empty param.page)?1:param.page}</span> of ${lastNum } pages(${count}건 검색 / 총 ${total_count}건 중)</div>
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
