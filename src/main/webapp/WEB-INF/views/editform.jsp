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
        <tr><td>Title:</td><td><input type="text" name="title" value=${u.title} /></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer" value=${u.writer} /></td></tr>
        <tr><td>Category:</td><td><input type="text" name="category" value=${u.category} /></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
    </table>
    <input type="submit" value="edit"/>
    <input type="button" value="cancel" onclick="history.back()">
</form>
</body>
</html>
