
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>

    <body>
        <form action="/Authorize/logout" method="POST">
            <button>Logout</button>
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Restaurant</th>
                </tr>
            </thead>
            <tbody>

                <c:forEach var="item" items="${list}">
                    <tr>
                        <td>${item.name}</td>
                        <td>
                            <c:forEach var="itemCat" items="${item.category}">${itemCat.name}
                            </c:forEach> 
                        </td>

                        <td>${item.restaurant.name}</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>

</html>