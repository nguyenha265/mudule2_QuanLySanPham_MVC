<%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 23/07/2019
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form method="post">
    <table>
        <tr>
            <th>Id</th>
            <td><input type="text" name="id" value="${requestScope["product"].getId()}"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" value="${requestScope["product"].getName()}"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price" value="${requestScope["product"].getPrice()}"></td>
        </tr>
        <tr>
            <th>Describe</th>
            <td><input type="text" name="describe" value="${requestScope["product"].getDescribe()}"></td>
        </tr>
        <tr>
            <th>Company</th>
            <td><input type="text" name="company" value="${requestScope["product"].getCompany()}"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="Edit Product"></td>
        </tr>
    </table>
</body>
</html>
