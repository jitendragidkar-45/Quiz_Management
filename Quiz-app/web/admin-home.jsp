<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
       background: darkslategrey ;
        margin: 0;
        padding: 0;
        color: #333;
    }
    .container {
        width: 80%;
        max-width: 800px;
        margin: 150px auto;
        padding: 30px;
        background-color: yellow;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        text-align: center;
        
    }
    h1 {
        color: #444;
        margin-bottom: 30px;
        font-size: 28px;
        font-weight: 700;
    }
    .nav-links {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    .nav-links li {
        margin: 15px 0;
    }
    .nav-links a {
        display: block;
        padding: 15px;
        font-size: 18px;
        color: #007bff;
        text-decoration: none;
        border-radius: 8px;
        background-color: #e9ecef;
        border: 1px solid #007bff;
        transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease;
    }
    .nav-links a:hover {
        background-color: #007bff;
        color: #ffffff;
        border-color: #007bff;
    }
    .nav-links a:active {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .footer {
        margin-top: 20px;
        font-size: 14px;
        color: #666;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Create User</h1>
    <ul class="nav-links">
        <li><a href="<%=request.getContextPath() %>/Controller?action=teacher-add">Add Teacher</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?action=student-add">Add Student</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?action=logout">Logout</a></li>
    </ul>
    <div class="footer">
        <p>&copy;Online Quiz Portal.</p>
    </div>
</div>
</body>
</html>
