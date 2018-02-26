<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Категории продуктов</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
    <!-- Custom styles for this template -->
    <link href="../../media/css/categories.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <a href="../../index.jsp" class="btn btn-info" role="button">На главную</a>
    <h1>Категории товаров</h1>

    <c:if test="${!empty list}">
    <c:forEach items="${list}" var="item">
    <!-- Modal -->
    <div id="item_${item.id}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">${item.name}</h4>
                </div>
                <div class="modal-body">
                    <p>${item.name}</p>
                    <p>${item.description}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>
    <div class="row">

        <table class="table">
            <tr>
                <th>#ID</th>
                <th>Наименование</th>
                <th>Описание</th>
            </tr>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>
                        <!-- Trigger the modal with a button -->
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#user_${user.id}">показать</button>
                        <a href="categorydata/${item.id}" target="_parent">${item.name}</a>
                    </td>
                    <td>${item.description}</td>
                    <td><a href="<c:url value='edit/${item.id}'/>">Ре</a></td>
                    <td><a href="<c:url value='remove/${item.id}'/>">Уд</a></td>
                </tr>
            </c:forEach>
        </table>
        </c:if>
    </div>
</body>
</html>
