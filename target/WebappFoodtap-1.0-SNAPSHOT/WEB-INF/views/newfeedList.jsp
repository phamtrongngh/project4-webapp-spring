<%-- 
    Document   : newfeedList
    Created on : Jul 10, 2020, 11:51:38 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New feed List Page</title>
    </head>
    <body>
        <a href="/newfeed/create">create new feed</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Content</th>
                    <th>Likes</th>
                    <th>Comment</th>
                    <th>Created At</th>
                    <th>Update At</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${list}">
                    <tr>
                        <td>${item._id}</td>
                        <td>${item.content}</td>
                        <td>${item.likes}</td>
                        <td>${item.comments}</td>
                        <td>${item.createdAt}</td>
                        <td>${item.updatedAt}</td>
                        <td><a href="/newfeed/${item._id}">Update</a></td>
                        <td><a href="/newfeed/delete/${item._id}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
