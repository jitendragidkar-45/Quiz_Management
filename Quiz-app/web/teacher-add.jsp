<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Teacher</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: darkslategrey ;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        max-width: 600px;
        margin: 100px auto;
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
    .form-group input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    .form-group input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .form-group input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .form-group .error {
        color: #ff0000;
        font-size: 14px;
        margin-top: 5px;
        text-align: center;
    }
    .back-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #007bff;
        font-size: 16px;
    }
    .back-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Add Teacher</h1>

    <form method="post" action="<%=request.getContextPath() %>/Controller">
        <input type="hidden" name="action" value="teacher-form" />

        <div class="form-group">
            <label for="teacherid">Teacher ID:</label>
            <input type="text" id="teacherid" name="teacherid" value="<%=request.getAttribute("teacherid") %>" />
        </div>

        <div class="form-group">
            <label for="teachername">Teacher Name:</label>
            <input type="text" id="teachername" name="teachername" value="<%=request.getAttribute("teachername") %>" />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="text" id="password" name="password" value="<%=request.getAttribute("password") %>" />
        </div>

        <div class="form-group">
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" value="<%=request.getAttribute("subject") %>" />
        </div>

        <% if (request.getAttribute("msg") != null) { %>
            <div class="form-group error">
                <%=request.getAttribute("msg") %>
            </div>
        <% } %>

        <div class="form-group">
            <input type="submit" name="submit" value="Submit" />
        </div>
    </form>

    <a href="<%=request.getContextPath() %>/Controller?action=admin-home" class="back-link">Back</a>
</div>
</body>
</html>
