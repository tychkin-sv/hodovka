<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Пользователи</title>

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


<h1>Добавить пользователя</h1>
<c:url var="addAction" value="/users/add"/>

<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.userName}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="bookTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="username"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookAuthor">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookAuthor"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty user.username}">
                    <input type="submit"
                           value="<spring:message text="Редактировать пользователя"/>"/>
                </c:if>
                <c:if test="${empty user.username}">
                    <input type="submit"
                           value="<spring:message text="Добавить пользователя"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
