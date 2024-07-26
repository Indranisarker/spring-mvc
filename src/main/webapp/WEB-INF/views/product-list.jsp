<%--
  Created by IntelliJ IDEA.
  User: indra
  Date: 7/6/2024
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Product List</title>
    <%@include file="base.jsp"%>
</head>
<body>
    <h1 style="text-align: center; margin-top: 200px; color: white; font-size: 47px">Welcome to Our Product List</h1>

    <c:choose>
        <c:when test="${not empty products}">
    <table class="table table-striped table-bordered">
        <thead class="table-header-dark">
        <tr>
            <th scope="col">Product No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Price</th>
            <th scope="col" style="text-align: center">Action</th>
        </tr>
        <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}/-</td>
            <td style="text-align: center; gap: 20px">
                <a href="product/${product.id}"><i class="fas fa-info-circle" style="color: darkblue; margin-right: 20px"></i></a>
            <a href="update-form/${product.id}"> <i class="fas fa-edit" style="color: green; margin-right: 20px" ></i></a>
            <a href="delete-product/${product.id}"><i class="fas fa-trash" style="color: red"></i></a>
            </td>
        </tr>
        </c:forEach>
        </c:when>
        <c:otherwise>
           <p style="text-align: center; font-weight: bold">No Products Available in the List!</p>
        </c:otherwise>
    </c:choose>
        </thead>
    </table>
    <a href="add-product-form"><button type="submit" class="button" value="Add product">Add Product</button></a>
</body>
</html>
