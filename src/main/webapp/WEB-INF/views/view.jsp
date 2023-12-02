<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: 류소영
  Date: 2023-12-01
  Time: 오후 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>View Post</h1>
<form commandName="boardVO">
    <input type="hidden" name="seq" value=${u.seq} />
    <table id="view">
        <tr><td>Title:</td><td>${u.title}</td></tr>
        <tr><td>Writer:</td><td>${u.writer}</td></tr>
        <tr><td>Category:</td><td>${u.category} </td></tr>
        <tr><td>Content:</td><td>${u.content}</td></tr>
    </table>
    <input type="button" value="list" onclick="history.back()">
</form>
</body>
</html>
