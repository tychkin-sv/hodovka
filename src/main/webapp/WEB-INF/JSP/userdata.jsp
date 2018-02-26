<%--
Страница информации о пользователе
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Пользователи</title>
</head>

<body>

<table caption="Пользователи" class="table .table-striped">

    <thead class="thead-dark">
    <tr>
        <th>Пользователь</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отчество</th>
        <th>Адрес</th>
    </tr>
    </thead>
    <tbody>


<c:forEach var="user" items="${requestScope.users}">
    <tr>
        <td>user.username</td>
        <td>user.name</td>
        <td>user.surname</td>
        <td>user.secondname</td>
        <td>user.email</td>
    </tr>
</c:forEach>
    </tbody>
</table>
</body>
</html>
