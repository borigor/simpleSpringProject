<%--
  Created by IntelliJ IDEA.
  User: igor
  Date: 08.07.2014
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input user data</title>
    <style type="text/css">
        .user-data-form{
            float: left;
            display: block;
        }
        .user-data__field {
            clear: both;
            text-align: right;
            line-height: 25px;
        }
        label {
            float: left;
            padding-right: 10px;
        }
        .user-data__button {
            clear: both;
            text-align: center;
            padding-top: 20px;;
        }
    </style>
</head>
<body>
    <h3>Input user data</h3>
    <div class="user-data-form">
        <form action = "./../userData" method = "GET">
            <div class="user-data__field">
                <label for="user">User</label>
                <input type="text" name="user" id="user" />
            </div>

            <div class="user-data__field">
                <label for="id">Id</label>
                <input type="text" name="id" id="id" />
            </div>

            <div class="user-data__button">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>
