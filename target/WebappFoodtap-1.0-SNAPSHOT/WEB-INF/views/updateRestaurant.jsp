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
        <title>Update Restaurant Page</title>
    </head>
    <body>
        <h1>UPDATE</h1>
        <form action="/restaurant/updateRestaurant" method="post">
            <input type="text" value="${restaurant._id}" name="id" hidden/>
            Name: <input type="text" value="${restaurant.name}" name="name" /> <br/>
            Address: <input type="text" value="${restaurant.address}" name="address" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>
