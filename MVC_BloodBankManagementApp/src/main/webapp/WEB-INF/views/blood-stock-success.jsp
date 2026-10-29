<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Blood Stock Success</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f9;
        }

        .success-container {
            width: 90%;
            max-width: 600px;
            margin: 100px auto;
            background: white;
            padding: 45px;
            text-align: center;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.12);
            border-top: 5px solid #d60000;
        }

        .success-icon {
            font-size: 55px;
            margin-bottom: 15px;
        }

        h1 {
            color: #b40000;
            margin-bottom: 15px;
        }

        p {
            color: #555;
            font-size: 17px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 22px;
            margin: 5px;
            background: #d60000;
            color: white;
            text-decoration: none;
            border-radius: 7px;
            font-weight: bold;
        }

        .btn:hover {
            background: #a80000;
        }

        .btn-secondary {
            background: #455a64;
        }

        .btn-secondary:hover {
            background: #263238;
        }
    </style>
</head>

<body>

    <div class="success-container">

        <div class="success-icon">🩸</div>

        <h1>Blood Stock Added Successfully!</h1>

        <p>
            Blood stock has been successfully added
            and recorded in the system.
        </p>

        <a href="${pageContext.request.contextPath}/viewBloodStock"
           class="btn">
            View Blood Stock
        </a>

        <a href="${pageContext.request.contextPath}/bloodStock"
           class="btn btn-secondary">
            Add More Stock
        </a>

    </div>

</body>
</html>