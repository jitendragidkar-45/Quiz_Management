<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question Form</title>
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
        .container {
            background-color: yellow;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 24px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Add New Question</h1>
    <div class="message"><%= request.getAttribute("msg") %></div>
    <form method="post" action="<%= request.getContextPath() %>/Controller">
        <input type="hidden" name="action" value="question-form" />
        
        <label for="question">Enter Question:</label>
        <input type="text" id="question" name="question"  />
        
        <label for="option1">Option No.1:</label>
        <input type="text" id="option1" name="option1"  />
        
        <label for="option2">Option No.2:</label>
        <input type="text" id="option2" name="option2" />
        
        <label for="option3">Option No.3:</label>
        <input type="text" id="option3" name="option3"  />
        
        <label for="option4">Option No.4:</label>
        <input type="text" id="option4" name="option4"  />
        
        <label for="answer">Correct Option:</label>
        <input type="text" id="answer" name="answer" />
        
        <input type="submit" name="submit" value="Saved & Next Question" />
        <input type="submit" name="submit" value="Back" formaction="<%= request.getContextPath() %>/Controller?action=teacher-home" />
    </form>
</div>

</body>
</html>
