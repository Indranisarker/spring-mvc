<%--
  Created by IntelliJ IDEA.
  User: indra
  Date: 7/7/2024
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Product Details</title>
    <%@include file="base.jsp"%>
</head>
<body>
<div class="product-details">
    <h1>Product Details</h1>
    <c:choose>
        <c:when test="${not empty product}">
            <p><strong>ID:</strong> ${product.id}</p>
            <p><strong>Name:</strong> ${product.name}</p>
            <p><strong>Description:</strong> ${product.description}</p>
            <p><strong>Price:</strong> ${product.price}</p>
            <p><strong>Category:</strong> ${product.category}</p>
        </c:when>
        <c:otherwise>
            <p>Product not found.</p>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
