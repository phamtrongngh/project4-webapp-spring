
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>


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



<%@include  file="footer.jsp" %>