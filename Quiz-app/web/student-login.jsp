<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: darkslategrey ;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        width: 100%;
        max-width: 400px;
        padding: 30px;
        background-color: yellow;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #444;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    .form-group input[type="submit"] {
        width: 100%;
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .form-group input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .error-message {
        color: #ff0000;
        font-size: 14px;
        margin-bottom: 15px;
        text-align: center;
    }
</style>
</head>
<body>
<div class="login-container">
    <h1>Student Login</h1>

    <% if (request.getAttribute("msg") != null) { %>
        <div class="error-message">
            <%=request.getAttribute("msg") %>
        </div>
    <% } %>

    <form method="post" action="<%=request.getContextPath() %>/Controller">
        <input type="hidden" name="action" value="student-login" />

        <div class="form-group">
            <label for="sid">Student ID:</label>
            <input type="text" id="sid" name="sid" value="<%=request.getAttribute("sid") %>" />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="<%=request.getAttribute("password") %>" />
        </div>

        <div class="form-group">
            <input type="submit" name="submit" value="Login" />
        </div>
    </form>
</div>
</body>
</html>
