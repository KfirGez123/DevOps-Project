<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
body {
    font-family: Arial, sans-serif;
    padding: 20px;
}

h1 {
    color: #4CAF50;
}
</style>
</head>
<body>
    <h1>Welcome, <%= request.getParameter("name") %>!</h1>
</body>
</html>
