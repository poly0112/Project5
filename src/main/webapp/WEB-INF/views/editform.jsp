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
<h1>Edit Post</h1>
<form commandName="boardVO" method="post" action="../editok">
    <input type="hidden" name="seq" value=${u.seq} />
    <table id="edit">
        <tr><td>이름:</td><td><input type="text" name="name" value=${u.name}></td></tr>
        <tr><td>나이:</td><td><input type="text" name="age" value=${u.age}></td></tr>
        <tr><td>성별:</td><td>남<input type="radio" name="gender" value="Male">여<input type="radio" name="gender" value="Female"/></td></tr>
        <tr><td>전화번호:</td><td><input type="text" name="phone" value=${u.phone}></td></tr>
        <tr><td>예약날짜 </td><td><input type="date" id="start" name="reservation" value="2023-12-16" min="2023-12-16" max="2024-12-16"></td></tr>
        <tr><td>식권 개수:</td><td><input type="number" name="tiket"></td></tr>
    </table>
    <input type="submit" value="edit"/>
    <input type="button" value="cancel" onclick="history.back()">
</form>
</body>
</html>
