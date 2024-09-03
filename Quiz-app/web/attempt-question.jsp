<%@page import="com.beans.Question"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Quiz Questions</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: darkslategrey ;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: yellow;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }
        h1 {
            font-size: 24px;
            color: #007bff;
            margin-bottom: 20px;
        }
        .question-block {
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #ddd;
        }
        .question-block:last-child {
            border-bottom: none;
            padding-bottom: 0;
        }
        .question-number {
            font-weight: bold;
            margin-bottom: 10px;
        }
        .options {
            margin-top: 10px;
        }
        .options label {
            display: block;
            margin-bottom: 5px;
            cursor: pointer;
        }
        .submit-btn {
            background-color: #28a745;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Quiz: <c:out value="${request.getAttribute('subject')}" /></h1>

    <sql:setDataSource var="ds1" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/quiz"
        user="shailesh"  password=""/>
        
    <sql:query dataSource="${ds1}" var="result">
        SELECT * FROM <%=request.getAttribute("subject") %>;
    </sql:query>

    <form action="<%=request.getContextPath()%>/Controller" method="post">
        <input type="hidden" name="action" value="submit-question" />
        <input type="hidden" name="subject" value="<%=request.getAttribute("subject") %>" />
        
        <% int cid1 = 1; %>
        <c:forEach var="row" items="${result.rows}">
            <div class="question-block">
                <div class="question-number">Question <%=cid1 %>:</div>
                <p><c:out value="${row.question}" /></p>
                <div class="options">
                    <label><input type="radio" name="choice<%=cid1 %>" value="a"> <c:out value="${row.a}" /></label>
                    <label><input type="radio" name="choice<%=cid1 %>" value="b"> <c:out value="${row.b}" /></label>
                    <label><input type="radio" name="choice<%=cid1 %>" value="c"> <c:out value="${row.c}" /></label>
                    <label><input type="radio" name="choice<%=cid1 %>" value="d"> <c:out value="${row.d}" /></label>
                </div>
            </div>
            <% cid1++; %>
        </c:forEach>
        
        <input type="hidden" name="cid" value="<%=cid1 %>" />
        <button type="submit" class="submit-btn">Submit</button>
    </form>
</div>

</body>
</html>
