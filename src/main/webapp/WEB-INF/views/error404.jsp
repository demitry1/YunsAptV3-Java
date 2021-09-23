<%--
  Created by IntelliJ IDEA.
  User: demit
  Date: 2021-09-21
  Time: 오후 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr">

<head>
    <title>Yun's 아파트 거래정보</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <!-- simple line icon -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/simple_line.css">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery-ui.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/generic-class.css">
    <!-- FontAwesome.css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/fontawsome.all.css">
</head>

<body>
<div class="main-wrapper">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="error-box">
        <div class="error-body text-center">
            <h1 class="error-title text-danger">404</h1>
            <h3 class="text-uppercase error-subtitle">현재 작업중 입니다</h3>
            <a href="/index" class="btn btn-danger btn-rounded waves-effect waves-light mb-5 text-white">Back to home</a> </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- All Required js -->
<!-- ============================================================== -->
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<!-- Required Fremwork -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script>
    $(".preloader").fadeOut();
</script>
</body>

</html>