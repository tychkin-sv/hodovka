<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html>
<head>
  <!-- Bootstrap CSS -->
  <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- JQuery -->
  <script src="../../assets/js/jquery-3.2.1.min.js"></script>
  <!-- Bootstrap core CSS -->
  <script src="../../assets/js/bootstrap.min.js"></script>
</head>
<body>
<div id="pageheader">
    <jsp:invoke fragment="header"/>
</div>

<div id="body">
    <jsp:doBody/>
</div>

<div id="pagefooter">
    <jsp:invoke fragment="footer"/>
</div>
</body>
</html>