
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Restaurant Page</title>
    </head>
    <body>
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
                        <td>${item.idRes.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>