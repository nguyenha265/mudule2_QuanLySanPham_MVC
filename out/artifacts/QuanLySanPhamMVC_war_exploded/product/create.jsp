<%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 23/07/2019
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CreateProduct</title>
</head>
<body>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form method="post">
    <table>
        <tr>
            <th>Id</th>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <th>Describe</th>
            <td><input type="text" name="describe"></td>
        </tr>
        <tr>
            <th>Company</th>
            <td><input type="text" name="company"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="Create Product"></td>
        </tr>
    </table>
</form>
</body>
</html>
