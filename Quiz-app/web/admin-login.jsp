<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Administrator Login</title>
        
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            body {
                background: darkslategrey ;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .login-container {
                background: yellow;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
                max-width: 400px;
                width: 100%;
                text-align: center;
            }
            .login-container h1 {
                margin-bottom: 20px;
                font-size: 2rem;
                color: #333;
            }
            .login-container .form-group {
                text-align: left;
            }
            .login-container .form-group label {
                font-weight: 600;
                color: #333;
            }
            .login-container .form-group input {
                border-radius: 6px;
                border: 1px solid #ced4da;
                padding: 12px;
                width: 100%;
                margin-top: 5px;
                font-size: 1rem;
            }
            .login-container .form-group input[type="submit"] {
                background-color: #007bff;
                color: #ffffff;
                border: none;
                cursor: pointer;
                font-size: 1.1rem;
                font-weight: 600;
                padding: 12px;
                transition: background-color 0.3s, transform 0.3s;
            }
            .login-container .form-group input[type="submit"]:hover {
                background-color: #0056b3;
                transform: scale(1.02);
            }
            .login-container .alert {
                color: #dc3545;
                margin-bottom: 20px;
                font-size: 0.875rem;
            }
            .footer {
                position: absolute;
                bottom: 20px;
                width: 100%;
                text-align: center;
                color: #ffffff;
                font-size: 0.875rem;
            }

            .btn-login {
                background-color: #007bff; 
                border: none;
                border-radius: 5px;
                color: #ffffff;
                cursor: pointer;
                font-size: 16px;
                margin-top: 20px;
                padding: 10px 50px;
                text-transform: uppercase;
                transition: background-color 0.3s ease, transform 0.3s ease;
            }

            .btn-login:hover {
                background-color: #0056b3; 
                transform: scale(1.05);
            }

            .btn-login:focus {
                outline: none;
            }


        </style>
    </head>
    <body>

        <div class="login-container">
            <h1>Administrator Login</h1>

            <% if (request.getAttribute("msg") != null) {%>
            <div class="alert alert-danger">
                <%= request.getAttribute("msg")%>
            </div>
            <% }%>

            <form method="post" action="<%= request.getContextPath()%>/Controller">
                <input type="hidden" name="action" value="admin-login" />

                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" value="<%= request.getAttribute("username")%>" required />
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" value="<%= request.getAttribute("password")%>" required />
                </div>

                <input type="submit" name="submit" value="Login" class="btn-login" />

            </form>
        </div>

        <div class="footer">
            &copy; Online Quiz Portal
        </div>

        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>
</html>
