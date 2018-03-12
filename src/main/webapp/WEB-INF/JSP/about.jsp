<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>О нас</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
</head>

<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-lg-4 col-md-4">
            <p>Алюминиевые колесные проставки</p>
            <p>4х100, Dia = 58.6</p>
            <img class="goods" src="../../media/img/goods/good1.jpg" alt="1">
        </div>
        <div class="col-lg-4 col-md-4">
            <img class="goods" src="../../media/img/goods/good2.jpg" alt="2">
        </div>
        <div class="col-lg-4 col-md-4">
            <img class="goods" src="../../media/img/goods/good3.jpg" alt="3">
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>