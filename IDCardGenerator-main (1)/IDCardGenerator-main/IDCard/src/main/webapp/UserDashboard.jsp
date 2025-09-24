<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
</head>
<body>
    <h1>Welcome to the User Dashboard</h1>
    
    <%-- Retrieve username from session --%>
    <%
        String username = (String) session.getAttribute("username");
    %>
    
    <p>Hello, <%= username %>!</p>
    
    <p><a href="LogoutServlet">Logout</a></p>
</body>
</html>
