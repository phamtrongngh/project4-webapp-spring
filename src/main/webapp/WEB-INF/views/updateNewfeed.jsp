<%-- 
    Document   : updateNewfeed
    Created on : Jul 10, 2020, 11:51:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update New feed Page</title>
    </head>
    <body>
        <h1>UPDATE</h1>
        <form action="/newfeed/postUpdate" method="post">
            <input value="${newfeed._id}" name="id" hidden/>
            Content: <input type="text" value="${newfeed.content}" name="content" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>
