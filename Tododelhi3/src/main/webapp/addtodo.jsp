<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Todo</title>
</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<br/>
<form method="get" action="registertodo">
To do Description<input type="text" name="descr"><br/>
Target Date<input type="date" name="tdate"><br/>
<input type="submit" value="submit">
</form>


<br/><br/>


<%@include file="common/footer.html" %>

</body>
</html>