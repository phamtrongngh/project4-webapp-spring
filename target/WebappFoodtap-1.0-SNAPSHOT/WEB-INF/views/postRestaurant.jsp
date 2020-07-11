<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Restaurant Page</title>
    </head>
    <body>
        <h1>Post Restaurant</h1>
        <form action="/restaurant/postRestaurant" method="post">
            Name: <input type="text" name="name" /> <br/>
            Address: <input type="text" name="address" /> <br/>
            <button>SUBMIT</button>
        </form>
    </body>
</html>