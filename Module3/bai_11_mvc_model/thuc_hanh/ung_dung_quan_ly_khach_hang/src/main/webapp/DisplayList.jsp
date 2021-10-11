<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table tr th {
            padding: 10px;
        }

        a {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Customer</h1>
<table>
    <tr>
        <th>Number</th>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="customer" items="${customerListServlet}" varStatus="loop">
        <tr>
            <td><c:out value="${customer.key}"></c:out></td>
            <td><c:out value="${customer.value.id}"></c:out></td>
            <td><c:out value="${customer.value.name}"></c:out></td>
            <td><c:out value="${customer.value.email}"></c:out></td>
            <td><c:out value="${customer.value.address}"></c:out></td>
            <td>
                <button><a href="/customer?action=update&id=${customer.value.id}">Edit</a></button>
            </td>
            <td>
                <button><a href="/customer?action=remove&key=${customer.key}">Delete</a></button>
            </td>
        </tr>
    </c:forEach>
</table>
<button><a href="/customer?action=create">create</a></button>
</body>
</html>
