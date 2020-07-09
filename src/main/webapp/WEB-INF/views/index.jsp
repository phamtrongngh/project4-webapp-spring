
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HOME</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>NAME</th>
                    <th>PRICE</th>
                </tr>
            </thead>
            <tbody>
            <a  href="/product/create">Create</a>
                <c:forEach var="item" items="${list}">
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>
                            <form action="/product/${item._id}" method="get">
                                <button>UPDATE</button>
                            </form>
                        </td>
                        <td>
                            <form action="/product/delete/${item._id}" method="delete">
                                <button>DELETE</button>
                            </form>
                        </td></tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
