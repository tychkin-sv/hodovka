<%--
  Created by IntelliJ IDEA.
  User: TSV-WORK-PC
  Date: 2/22/2018
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Вход</title>
    <!-- Bootstrap and jQuery -->
    <t:bootstrap></t:bootstrap>
    <link href="../../media/css/login.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-sm">
        </div>
        <div class="col-sm">
<div class="container">
    <div class="row">

        <form action="action_page.php">
            <div class="imgcontainer">
                <img src="img_avatar2.png" alt="Avatar" class="avatar">
            </div>

            <div class="container">
                <%--@declare id="username"--%><label for="username"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" required>
                <%--@declare id="password"--%><label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <button type="submit">Вход</button>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>

    </div>
</div>
    </div>
        <div class="col-sm">
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
