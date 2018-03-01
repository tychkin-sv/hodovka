<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="body" fragment="true" %>
<html>
<head>
    <jsp:invoke fragment="head"/>
</head>
<body>
 <jsp:invoke fragment="header"/>
 <jsp:invoke fragment="body"/>
 <jsp:invoke fragment="footer"/>
</body>
</html>