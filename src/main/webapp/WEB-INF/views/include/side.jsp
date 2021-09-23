<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      <!-- Side-Nav-->
      <aside class="main-sidebar hidden-print ">
         <section class="sidebar" id="sidebar-scroll">
            <!-- Sidebar Menu-->
            <ul class="sidebar-menu">
               <!-- board -->
               <li class="nav-level">--- Board</li>
               <li class="active treeview">
                  <a class="waves-effect waves-dark" href="#">
                     <i class="far fa-address-card fa-lg me-2"></i><span>게시판</span>
                  </a>                
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/notice/notice"><i class="icon-arrow-right"></i>공지사항</a></li>
                  </ul>
               </li>
               <!-- main -->
               <li class="nav-level">--- Main</li>
               <li class="treeview">
                  <a class="waves-effect waves-dark" href="#!">
                     <i class="fas fa-home fa-lg me-1"></i><span> 아파트 정보</span><i class="icon-arrow-down"></i>
                  </a>
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/aptInfo/aptInfo"><i class="icon-arrow-right"></i>서울지역</a></li>
                     <!-- <li><a class="waves-effect waves-dark" href="#"><i class="icon-arrow-right"></i>수도권</a></li>
                     <li><a class="waves-effect waves-dark" href="#"><i class="icon-arrow-right"></i>기타지역</a></li> -->
                  </ul>
               </li>
               <li class="treeview">
                  <a class="waves-effect waves-dark" href="#!">
                     <i class="fas fa-won-sign fa-lg me-1"></i><span> 실거래가</span><i class="icon-arrow-down"></i>
                  </a>
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/realPrice/realPrice"><i class="icon-arrow-right"></i>매매</a></li>
                     <li><a class="waves-effect waves-dark" href="/realPrice/realPriceRent"><i class="icon-arrow-right"></i>전/월세</a></li>
                  </ul>
               </li>
               <li class="treeview">
                  <a class="waves-effect waves-dark" href="#!">
                     <i class="fas fa-trademark fa-lg me-1"></i><span> 거래현황</span><i class="icon-arrow-down"></i>
                  </a>
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/trade/tradeStatus"><i class="icon-arrow-right"></i>일자별</a></li>
                     <li><a class="waves-effect waves-dark" href="/trade/tradeArea"><i class="icon-arrow-right"></i>지역별</a></li>
                  </ul>
               </li>               
               <li class="treeview">
                  <a class="waves-effect waves-dark" href="#!">
                     <i class="fab fa-amazon-pay fa-lg me-1"></i><span> 가격현황</span><i class="icon-arrow-down"></i>
                  </a>
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/error"><i class="icon-arrow-right"></i>신고가 현황</a></li>
                     <li><a class="waves-effect waves-dark" href="/error"><i class="icon-arrow-right"></i>매매가 순위</a></li>
                  </ul>
               </li>               
               <!-- admin -->
               <li class="nav-level">--- Admin</li>
               <li class="treeview">
                  <a class="waves-effect waves-dark" href="#!">
                     <i class="fas fa-user-cog fa-lg me-1"></i><span> 관리자 </span><i class="icon-arrow-down"></i>
                  </a>
                  <ul class="treeview-menu">
                     <li><a class="waves-effect waves-dark" href="/error"><i class="icon-arrow-right"></i>게시판 관리</a></li>
                     <li><a class="waves-effect waves-dark" href="/error"><i class="icon-arrow-right"></i>사용자 관리</a></li>
                  </ul>
               </li>
            </ul>
         </section>
      </aside>
      