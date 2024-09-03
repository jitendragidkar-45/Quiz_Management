<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Quiz Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: darkslategrey;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 800px;
            width: 100%;
            padding: 20px;
            background-color: yellow;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .back-button {
            display: block;
            width: 100px;
            margin: 0 auto;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Quiz Results</h1>
    
    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/quiz"
        user="shailesh" password=""/>

    <sql:query dataSource="${ds}" var="result">
        select * from testattempt;
    </sql:query>

    <table>
        <tr>
            <th>ID</th>
            <th>Student ID</th>
            <th>Name</th>
            <th>Test ID</th>
            <th>Status</th>
            <th>Result</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>${row.id}</td>
                <td>${row.sid}</td>
                <td>${row.name}</td>
                <td>${row.tid}</td>
                <td>${row.status}</td>
                <td>${row.result}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="javascript:history.back()" class="back-button">Back</a>

    <div class="footer">
        &copy; Online Quiz Portal.
    </div>
</div>

</body>
</html>
