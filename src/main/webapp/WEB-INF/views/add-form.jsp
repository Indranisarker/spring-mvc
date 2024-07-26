<%--
  Created by IntelliJ IDEA.
  User: indra
  Date: 7/25/2024
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Add product</title>
    <%@include file="base.jsp"%>
</head>
<body>
<div class="container">
    <h1>Add New Product</h1>
    <form action="add-product" method="post">
        <div class="form-group">
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter product name" required >
        </div>
        <div class="form-group">
            <label for="price">Product Price:</label>
            <input type="number" id="price" name="price" step="0.01" placeholder="Enter product price" required>
        </div>
        <div class="form-group">
            <label for="category">Product Category:</label>
            <input type="text" id="category" name="category" placeholder="Enter product category" required>
        </div>
        <div class="form-group">
            <label for="description">Product Description:</label>
            <input type="text" id="description" name="description" placeholder="Enter product description">
        </div>
        <div class="form-group">
            <input type="submit" value="Add Product">
        </div>
    </form>
</div>
</body>
</html>
