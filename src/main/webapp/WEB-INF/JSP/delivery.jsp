<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Title</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
</head>
<body>

<jsp:include page="fixed.jsp"/>
<jsp:include page="header.jsp"/>

<div class="container">

    <H1>УСЛОВИЯ ДОСТАВКИ И ОПЛАТЫ</H1>
    <H2>Способы доставки</H2>
    <ul>
        <li>Доставка курьером</li>
        <li>Доставка почтой</li>
        <li>Транспортная компания</li>
        <li>Нова пошта</li>
        <li>Почтоматы Приватбанка</li>
         <li>Доставка "Самовывоз"</li>
    </ul>
    <H2>Способы оплаты</H2>


    <ul>
        <li class="">Наличными</li>
        <li class="">Безналичный расчет</li>
        <li class="">Наложенный платеж</li>
        <li class=""></li>

    </ul>

    <H2>Регионы доставки:</H2>
    <ul>
        <li>Украина, все регионы</li>
    </ul>

    <p>Компания HODOVKA отправляет товары ежедневно.</p>
    <p>Вы можете заказать доставку любой из существующих служб.</p>

    <p>Вы можете произвести оплату товара путем осуществления денежного перевода на карту ПриватБанка  5168 7422 0013 5345 (Кузляев А.В.)</p>

</div>
<jsp:include page="footer.jsp"/>

</body>
</html>
