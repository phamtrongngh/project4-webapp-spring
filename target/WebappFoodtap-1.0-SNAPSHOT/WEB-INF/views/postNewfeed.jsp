<%-- 
    Document   : postNewfeed
    Created on : Jul 10, 2020, 11:52:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Post</h1>
        <form action="/newfeed/postNewfeed" method="post">
            Content: <input type="text" name="content" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>
