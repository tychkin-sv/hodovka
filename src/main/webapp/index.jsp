<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Интернет-магазин фирмы "HODOVKA"</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- animate -->
    <link href="assets/css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="media/css/preloader.css" rel="stylesheet">
</head>

<body>
<div id="page-preloader" class="preloader">
    <div class="loader">
        <img class="animated flip" src="media/img/logo_new.png" alt="logo">
    </div>
</div> <!--loader-->

        <h1>Интернет-магазин фирмы "HODOVKA"</h1>
        <%--<a href="<c:url value="/users"/>" target="_parent">Пользователи</a>--%>
        <div class="logo">
         <img src="media/img/logo_new.png" width="125">
        </div>

        <a href="/about" class="btn btn-info" role="button">О нас</a>
        <a href="/products/list" class="btn btn-info" role="button">Товары</a>
        <a href="/users/list" class="btn btn-info" role="button">Пользователи</a>

<!-- JQuery -->
<script src="assets/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap core CSS -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- animate -->

<!-- Bootstrap core CSS -->
<script src="media/js/preloader.js"></script>

</body>
</html>