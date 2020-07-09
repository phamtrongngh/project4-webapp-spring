<%-- 
    Document   : postProduct
    Created on : Jul 9, 2020, 2:01:24 AM
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
        <h1>Post</h1>
        <form action="/product/postProduct" method="post">
            Name: <input type="text" name="name" /> <br/>
            Price: <input type="text" name="price" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>
