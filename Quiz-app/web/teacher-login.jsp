<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Teacher Login</title>
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
            max-width: 400px;
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
        .error-message {
            color: red;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Teacher Login</h1>

    <% if (request.getAttribute("msg") != null) { %>
        <div class="error-message"><%=request.getAttribute("msg") %></div>
    <% } %>

    <form method="post" action="<%=request.getContextPath() %>/Controller">
        <input type="hidden" name="action" value="teacher-login" />

        <input type="text" name="tid" placeholder="Teacher ID" value="<%=request.getAttribute("tid") %>" required />

        <input type="password" name="password" placeholder="Password" value="<%=request.getAttribute("password") %>" required />

        <input type="submit" name="submit" value="Login" />
    </form>
</div>

</body>
</html>
