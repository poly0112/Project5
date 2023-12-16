<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>예식장 예약</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>이름</th>
        <th>나이</th>
        <th>성별</th>
        <th>핸드폰 번호</th>
        <th>예약 날짜</th>
        <th>식권 개수</th>
        <th>수정일</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td onclick="location.href='view/${u.seq}'">${u.seq}</td>
            <td onclick="location.href='view/${u.seq}'">${u.name}</td>
            <td onclick="location.href='view/${u.seq}'">${u.age}</td>
            <td onclick="location.href='view/${u.seq}'">${u.gender}</td>
            <td onclick="location.href='view/${u.seq}'">${u.phone}</td>
            <td onclick="location.href='view/${u.seq}'">${u.reservation}</td>
            <td onclick="location.href='view/${u.seq}'">${u.tiket}</td>
            <td onclick="location.href='view/${u.seq}'">${u.regdate}</td>
            <td><a href="editform/${u.seq}">edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>