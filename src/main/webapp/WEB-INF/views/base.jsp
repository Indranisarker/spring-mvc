<%--
  Created by IntelliJ IDEA.
  User: indra
  Date: 7/25/2024
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq7j9J3U1ezzOli8KLP1HqlZP3uUsG00mRM4l6q3fBBdGw1t2T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <!-- Popper.js -->
</head>
<body>
<style>
    body {
        background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20230714/pngtree-gadgets-in-a-striking-3d-dim-environment-image_3859890.jpg');
        background-size: cover; /* This will make the image cover the entire background */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        background-attachment: fixed; /* Ensures the background image stays in place when scrolling */
    }
    table {
        width: 60%;
        background: white;
        border-collapse: collapse;
        margin: 20px  300px;
    }
    th, td {
        text-align: center;
        border: 1px solid #ddd;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
        text-align: center;
    }
    .container {
        width: 50%;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
        color: #555;
    }
    .form-group input[type="text"],
    .form-group input[type="number"],
    .form-group input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .form-group input[type="submit"] {
        background-color: #5cb85c;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 16px;
    }
    .form-group input[type="submit"]:hover {
        background-color: #4cae4c;
    }
    .button[type="submit"]{
        margin-left: 650px;
        background-color: #4cae4c;
        border: none;
        color: white;
        padding: 8px 40px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        border-radius: 5px;
    }
    .product-details {
        background: white;
        width: 50%;
        margin-top: 200px;
        margin-left: 350px;
        border: 1px solid #ddd;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .product-details h1 {
        text-align: center;
    }
    .product-details p {
        margin-left: 50px;
        font-size: 18px;
    }
</style>
</body>
</html>
