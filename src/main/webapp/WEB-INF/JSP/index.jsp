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
    <%--<a href="<c:url value="/users"/>" target="_parent">Пользователи</a>--%>
    <div class="logo">
        <img src="media/img/logo_new.png" width="125">
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
