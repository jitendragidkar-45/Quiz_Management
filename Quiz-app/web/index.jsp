<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quiz Portal</title>
        
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
       
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <style>
            body {
                background: linear-gradient(135deg, #6e8efb, #a777e3);
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
            }
            .login-container {
                background-color: yellow;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                text-align: center;
                max-width: 400px;
                width: 100%;
            }
            .login-container h2 {
                margin-bottom: 20px;
                font-size: 2rem;
                color: #333;
            }
            .login-container a {
                display: block;
                margin: 15px 0;
                padding: 15px;
                color: #ffffff;
                background-color: #007bff;
                text-decoration: none;
                border-radius: 8px;
                transition: background-color 0.3s, transform 0.2s;
            }
            .login-container a:hover {
                background-color: #0056b3;
                transform: scale(1.05);
            }
            .login-container a i {
                margin-right: 8px;
            }

            .btn {
                border: none;
                border-radius: 6px;
                color: #ffffff;
                cursor: pointer;
                font-size: 1rem;
                font-weight: 600;
                padding: 12px 20px;
                text-transform: uppercase;
                transition: background-color 0.3s, transform 0.3s;
                display: inline-block;
                text-align: center;
            }

        </style>
    </head>
    <body>

        <div class="login-container">
            <h2>Welcome to Quiz Portal</h2>
            <a href="<%=request.getContextPath()%>/Controller?action=admin"><i class="fas fa-user-shield"></i> Administrator Login</a>
            <a href="<%=request.getContextPath()%>/Controller?action=student"><i class="fas fa-user-graduate"></i> Student Login</a>
            <a href="<%=request.getContextPath()%>/Controller?action=teacher"><i class="fas fa-chalkboard-teacher"></i> Teacher Login</a>
        </div>

   
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
