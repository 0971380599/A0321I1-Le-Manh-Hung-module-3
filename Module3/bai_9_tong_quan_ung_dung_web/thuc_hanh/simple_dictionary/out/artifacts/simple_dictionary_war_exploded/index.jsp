<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        .text-input {
            width: 300px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 4px;
            padding: 12px 10px 12px 10px;
        }
        #submit {
            border-radius: 2px;
            padding: 10px 32px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<form action="/translation" method="post">
    <div class="translation">
        <h1>Vietnamese Dictionary</h1>
        <label>
            <input class="text-input" type="text" name="txtSearch" placeholder="Enter your word: " >
        </label>
        <input type="submit" id="submit" value="search">
    </div>
</form>
</body>
</html>
