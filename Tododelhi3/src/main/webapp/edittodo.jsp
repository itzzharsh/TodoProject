<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Todo</title>
</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<br/>
<form method="get" action="updatetodo">
<input type="hidden" name="id" value="${obj.id}">
To do Description<input type="text" name="descr" value="${obj.descr}"><br/>
Target Date<input type="date" name="tdate" value="${obj.tdate}"><br/>
<input type="submit" value="submit">
</form>


<br/><br/>


<%@include file="common/footer.html" %>

</body>
</html>