<%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 23/07/2019
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>product list</title>
    <link rel="stylesheet" href="product/style.css" type="text/css">
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/product?action=create">Create New Product</a>
</p>
<p>
    <a href="/product">Back to list of all Products</a>
</p>
<form method="post">
    <input type="text" name="seach">
    <input type="submit" value="seach">
</form>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Describe</th>
        <th>company</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getCompany()}</td>
            <td><a href="/product?action=view&id=${product.getId()}">Xem</a></td>
            <td><a href="/product?action=edit&id=${product.getId()}">Sửa</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">Xóa</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
