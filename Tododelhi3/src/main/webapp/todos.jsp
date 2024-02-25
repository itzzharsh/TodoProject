<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <meta charset="UTF-8">
    <title>Todos</title>
</head>
<body style="background-color: #ecf0f1; color: #555; text-align:center;">

    <%@include file="common/header.html" %>
    <%@include file="common/nav.html" %>
    
    <center><h2>Hello! You can do all your todos here.</h2></center>

    <table border="2" style="height: 40%; width: 60%; margin: 0 auto; color: #555;">
        <tr>
            <th>Serial No.</th>
            <th>Description</th>
            <th>Target Date</th>
            <th>Option</th>
        </tr>
        <c:forEach var="todo" items="${obj}">
            <tr>
                <td>${todo.id }</td>
                <td>${todo.descr }</td>
                <td>${todo.tdate }</td>
                <td>
                    <a href="edittodo?id=${todo.id }" style="color: #3498db;">Edit</a>/
                    <a href="deletetodo?sno=${todo.id }" style="color: #e74c3c;">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br/><br/><br/><br/><br/>

    <%@include file="common/footer.html" %>
</body>
</html>
