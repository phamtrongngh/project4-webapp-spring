<%-- 
    Document   : login
    Created on : Jul 7, 2020, 4:14:30 PM
    Author     : BEN ALPHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="/Authorize/login" method="POST">
            Phone: <input type="text" name="phone"/> <br/>
            Pass: <input type="password" name="password"/> <br/>
            <button>LOGIN</button>
        </form>
    </body>
</html>
