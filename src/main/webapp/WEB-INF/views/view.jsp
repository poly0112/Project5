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
        <tr><td>이름:</td><td>${u.name}</td></tr>
        <tr><td>나이:</td><td>${u.age}</td></tr>
        <tr><td>성별:</td><td>${u.gender} </td></tr>
        <tr><td>전화번호:</td><td>${u.phone}</td></tr>
        <tr><td>예약 날짜:</td><td>${u.reservation} </td></tr>
        <tr><td>식권 개수:</td><td>${u.tiket}</td></tr>
    </table>
    <input type="button" value="list" onclick="history.back()">
</form>
</body>
</html>