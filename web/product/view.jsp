<%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 23/07/2019
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>viewProduct</title>
</head>
<body>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form>
    <table>
        <tr>
            <th>Id</th>
            <td>${product.getId()}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${product.getName()}</td>
        </tr>
        <tr>
            <th>Price</th>
            <td>${product.getPrice()}</td>
        </tr>
        <tr>
            <th>Describe</th>
            <td>${product.getDescribe()}</td>
        </tr>
        <tr>
            <th>Company</th>
            <td>${product.getCompany()}</td>
        </tr>
    </table>
</form>
</body>
</html>
