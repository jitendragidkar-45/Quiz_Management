<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       background: darkslategrey ;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }
    .container {
        background-color: yellow;
        padding: 40px 50px;
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }
    h1 {
        font-size: 28px;
        color: #222;
        margin-bottom: 30px;
        font-weight: 600;
    }
    a {
        display: block;
        background-color: #007bff;
        color: #ffffff;
        padding: 12px 20px;
        margin: 15px 0;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: all 0.3s ease;
    }
    a:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    }
</style>
</head>
<body>
<div class="container">
    <h1>Welcome</h1>
    <a href="<%=request.getContextPath() %>/Controller?action=select-test">Give Test</a>
    <a href="<%=request.getContextPath() %>/Controller?action=student-result">Check Result</a>
    <a href="<%=request.getContextPath() %>/Controller?action=logout">Logout</a>
</div>
</body>
</html>
