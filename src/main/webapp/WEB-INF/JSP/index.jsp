<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
</head>
<body>

<!--jsp:include page="fixed.jsp"/-->
<jsp:include page="header.jsp"/>
<div class="container">

    <h1>Интернет-магазин фирмы "HODOVKA"</h1>
    <%--<a href="<c:url value="/users"/>" target="_parent">Пользователи</a>--%>
    <div class="logo">
        <img src="media/img/logo_new.png" width="125">
    </div>

    <a href="/login" class="btn btn-info" role="button">Вход</a>
    <a href="/register" class="btn btn-info" role="button">Регистрация</a>
    <a href="/about" class="btn btn-info" role="button">О нас</a>
    <a href="/users/list" class="btn btn-info" role="button">Пользователи</a>
    <a href="/products/list" class="btn btn-info" role="button">Товары и услуги</a>

    <a href="/countries/list" class="btn btn-info" role="button">Страны</a>
    <a href="/categories/list" class="btn btn-info" role="button">Категории</a>
    <a href="/compatibilities/list" class="btn btn-info" role="button">Совместимость</a>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
