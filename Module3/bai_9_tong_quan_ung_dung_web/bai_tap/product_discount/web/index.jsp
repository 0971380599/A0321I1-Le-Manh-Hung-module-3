<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        .product tr td{
           padding: 10px;
        }
        .product tr td input {
            width: 250px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 4px;
            padding: 12px 10px;
        }
        #submit {
            margin: 10px 100px;
            border-radius: 2px;
            padding: 10px 12px;
            background-color: darkgray;
            font-size: 16px;
        }
    </style>
</head>
<body>
<form class="product" method="post" action="/productDiscount">
    <table>
        <tr>
            <td>
                <label> Product Description:</label>
            </td>
            <td>
                <input type="text" name="productDescription">
            </td>
        </tr>
        <tr>
            <td>
                <label> List Price:</label>
            </td>
            <td>
                <input type="text" name="listPrice">
            </td>
        </tr>
        <tr>
            <td>
                <label> Discount Percent:</label>
            </td>
            <td>
                <input type="text" name="discountPercent">
            </td>
        </tr>
    </table>
    <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>
