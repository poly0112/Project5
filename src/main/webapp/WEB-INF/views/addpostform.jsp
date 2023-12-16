<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>예약자 추가하기</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
        <tr><td>나이:</td><td><input type="text" name="age"/></td></tr>
        <tr><td>성별:</td><td>남<input type="radio" name="gender" value="Male"/>여<input type="radio" name="gender" value="Female"/></td></tr>
        <tr><td>전화번호:</td><td><input type="text" name="phone"/></td></tr>
        <tr><td>예약날짜 </td><td><input type="date" id="start" name="reservation" value="2023-12-16" min="2023-12-16" max="2024-12-16"></td></tr>
        <tr><td>식권 개수:</td><td><input type="number" name="tiket"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">list</button>
    <button type="submit">submit</button>
</form>

</body>
</html>