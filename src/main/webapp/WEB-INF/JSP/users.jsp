<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Пользователи</title>
    <!-- Bootstrap core CSS -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../media/css/register.css" rel="stylesheet">

</head>
<body>
<a href="../../index.jsp">На главную</a>
<br/>
<br/>

<h1>Book List</h1>

<c:if test="${!empty listUsers}">
    <table class="tg">
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
                <td><a href="/userdata/${user.id}" target="_parent">${user.username}</a></td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.secondname}</td>
                <td>${user.email}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Редактировать</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Удалить</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>




</body>
</html>
