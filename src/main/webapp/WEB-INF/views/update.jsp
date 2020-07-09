<%-- 
    Document   : update
    Created on : Jul 9, 2020, 2:43:57 AM
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
        <h1>UPDATE</h1>
        <form action="/product/postUpdate" method="post">
            <input value="${product._id}" name="id" hidden/>
            Name: <input type="text" value="${product.name}" name="name" /> <br/>
            Price: <input type="text" value="${product.price}" name="price" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>
