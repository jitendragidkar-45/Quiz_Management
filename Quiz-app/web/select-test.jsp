<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Subject</title>
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
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        text-align: left;
        max-width: 600px;
        width: 100%;
    }
    h1 {
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
        font-weight: 600;
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
        color: #ffffff;
    }
    td a {
        background-color: #28a745;
        color: #ffffff;
        padding: 8px 12px;
        text-decoration: none;
        border-radius: 5px;
        font-size: 14px;
        transition: all 0.3s ease;
    }
    td a:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Select a Subject to Attempt Test</h1>
    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/quiz"
        user="shailesh"  password=""/>
         
    <sql:query dataSource="${ds }" var="result">
        select * from teacher;
    </sql:query>

    <table>
        <tr>
            <th>Subject Name</th>
            <th>Action</th>
        </tr>

        <c:forEach var="row" items="${result.rows }">
            <tr>
                <td><c:out value="${row.subject }" /></td>
                <td><a href="<%=request.getContextPath() %>/Controller?action=attempt-test&tid=<c:out value='${row.tid }'/>">Attempt Test</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
