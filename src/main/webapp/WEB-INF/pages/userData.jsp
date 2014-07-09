<%--
  Created by IntelliJ IDEA.
  User: igor
  Date: 08.07.2014
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User data</title>
</head>
<body>
    <h3>username : ${user}</h3>
    <h3>Id : ${id}</h3>
    <h3>next Id : ${nextId}</h3>

    <form action="./index/" method="get">
        <input type="submit" value="Main">
    </form>
</body>
</html>
