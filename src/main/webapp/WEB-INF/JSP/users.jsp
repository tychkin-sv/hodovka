<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page session="false" %>

<html>
<head>
    <title>Пользователи</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
    <!-- Custom styles for this template -->
    <link href="../../media/css/users.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <a href="/index" class="btn btn-info" role="button">На главную</a>
<h1>Пользователи</h1>

<c:if test="${!empty listUsers}">
    <c:forEach items="${listUsers}" var="user">
    <!-- Modal -->
    <div id="user_${user.id}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">${user.name}</h4>
                </div>
                <div class="modal-body">
                    <p>${user.username}</p>
                    <p>${user.secondname}</p>
                    <p>${user.surname}</p>
                    <p>${user.email}</p>
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
            <th>Пользователь</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Отчество</th>
            <th>Адрес</th>
            <th>1</th>
            <th>2</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#user_${user.id}">показать</button>
                    <a href="userdata/${user.id}" target="_parent">${user.username}</a>
                </td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.secondname}</td>
                <td>${user.email}</td>
                <td><a href="<c:url value='edit/${user.id}'/>">Ре</a></td>
                <td><a href="<c:url value='remove/${user.id}'/>">Уд</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</div>

<c:if test="${!empty user}">
    <h1>пользователь не пустой</h1>
    <h1>${user.id}</h1>
</c:if>
</div>

</body>
</html>
