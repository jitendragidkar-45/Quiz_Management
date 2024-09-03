<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: darkslategrey ;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 600px;
            width: 100%;
            padding: 20px;
            background-color: yellow;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .welcome-message {
            font-size: 18px;
            margin-bottom: 20px;
        }
        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: #007bff;
            text-decoration: none;
            border: 1px solid #007bff;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome</h1>
    <p class="welcome-message">Hello, <%=session.getAttribute("tid") %>!</p>
    <a href="<%=request.getContextPath() %>/Controller?action=question-add">Add Questions</a>
    <a href="<%=request.getContextPath() %>/Controller?action=student-result">Check Results</a>
    <a href="<%=request.getContextPath() %>/Controller?action=logout">Logout</a>
</div>

</body>
</html>
