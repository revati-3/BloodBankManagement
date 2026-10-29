<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Add Blood Stock - BloodBank</title>

    <style>

        /* ================================
           GLOBAL
        ================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f5f7fb;
            color: #263238;
        }


        /* ================================
           NAVBAR
        ================================= */

        .navbar {
            width: 100%;
            height: 75px;

            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );

            display: flex;
            align-items: center;

            padding: 0 70px;

            box-shadow:
                0 3px 12px rgba(0,0,0,0.18);
        }

        .logo {
            color: white;
            text-decoration: none;

            font-size: 25px;
            font-weight: bold;

            white-space: nowrap;
        }

        .navbar ul {
            list-style: none;

            display: flex;
            align-items: center;

            gap: 28px;

            margin-left: auto;
        }

        .navbar ul li {
            list-style: none;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;

            font-size: 16px;
            font-weight: bold;

            transition: 0.3s;
        }

        .navbar ul li a:hover {
            color: #ffd6d6;
        }


        /* ================================
           PAGE
        ================================= */

        .page-container {
            min-height: calc(100vh - 75px);

            padding: 60px 20px;

            display: flex;
            justify-content: center;
            align-items: flex-start;
        }


        /* ================================
           FORM CARD
        ================================= */

        .stock-card {
            width: 100%;
            max-width: 650px;

            background: white;

            padding: 40px;

            border-radius: 16px;

            box-shadow:
                0 8px 25px rgba(0,0,0,0.10);

            border-top: 5px solid #d60000;
        }

        .stock-card h1 {
            text-align: center;

            color: #b40000;

            font-size: 30px;

            margin-bottom: 10px;
        }

        .stock-description {
            text-align: center;

            color: #666;

            font-size: 16px;

            margin-bottom: 30px;
        }


        /* ================================
           FORM
        ================================= */

        .form-group {
            margin-bottom: 22px;
        }

        .form-group label {
            display: block;

            font-weight: bold;

            font-size: 16px;

            margin-bottom: 8px;

            color: #263238;
        }

        .form-group select,
        .form-group input {
            width: 100%;

            padding: 13px 14px;

            border: 1px solid #ccc;

            border-radius: 7px;

            font-size: 15px;

            background: white;
        }

        .form-group select:focus,
        .form-group input:focus {
            outline: none;

            border-color: #d60000;

            box-shadow:
                0 0 0 2px rgba(214,0,0,0.10);
        }


        /* ================================
           BUTTONS
        ================================= */

        .button-group {
            display: flex;

            gap: 15px;

            margin-top: 25px;
        }

        .btn {
            flex: 1;

            padding: 13px 20px;

            border-radius: 7px;

            text-decoration: none;

            text-align: center;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;

            border: none;
        }

        .btn-add {
            background: #d60000;

            color: white;
        }

        .btn-add:hover {
            background: #a80000;
        }

        .btn-view {
            background: #263238;

            color: white;
        }

        .btn-view:hover {
            background: #111;
        }


        /* ================================
           FOOTER
        ================================= */

        .footer {
            text-align: center;

            padding: 20px;

            background: #263238;

            color: white;

            font-size: 14px;
        }


        /* ================================
           RESPONSIVE
        ================================= */

        @media (max-width: 900px) {

            .navbar {
                height: auto;

                padding: 20px 25px;

                flex-direction: column;

                gap: 15px;
            }

            .navbar ul {
                margin-left: 0;

                flex-wrap: wrap;

                justify-content: center;

                gap: 15px;
            }

            .stock-card {
                padding: 25px;
            }

            .button-group {
                flex-direction: column;
            }
        }

    </style>

</head>

<body>


<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <a href="${pageContext.request.contextPath}/"
       class="logo">

        🩸 BloodBank

    </a>

    <ul>

        <li>
            <a href="${pageContext.request.contextPath}/">
                Home
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/donorForm">
                Register Donor
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/viewDonors">
                View Donors
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/bloodRequest">
                Blood Request
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/viewBloodRequests">
                View Requests
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/bloodStock">
                Blood Stock
            </a>
        </li>

        <li>
            <a href="${pageContext.request.contextPath}/viewBloodStock">
                View Stock
            </a>
        </li>

    </ul>

</nav>


<!-- ================= MAIN ================= -->

<div class="page-container">

    <div class="stock-card">

        <h1>🩸 Add Blood Stock</h1>

        <p class="stock-description">
            Add available blood units and maintain
            accurate blood stock records.
        </p>


        <!-- ================= FORM ================= -->

        <form action="${pageContext.request.contextPath}/addBloodStock"
              method="post">


            <div class="form-group">

                <label>
                    Blood Group
                </label>

                <select name="bloodGroup" required>

                    <option value="">
                        Select Blood Group
                    </option>

                    <option value="A+">A+</option>
                    <option value="A-">A-</option>

                    <option value="B+">B+</option>
                    <option value="B-">B-</option>

                    <option value="O+">O+</option>
                    <option value="O-">O-</option>

                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>

                </select>

            </div>


            <div class="form-group">

                <label>
                    Number of Units
                </label>

                <input type="number"
                       name="units"
                       min="1"
                       placeholder="Enter number of blood units"
                       required>

            </div>


            <div class="button-group">

                <button type="submit"
                        class="btn btn-add">

                    Add Blood Stock

                </button>


                <a href="${pageContext.request.contextPath}/viewBloodStock"
                   class="btn btn-view">

                    View Blood Stock

                </a>

            </div>

        </form>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer class="footer">

    © 2026 Blood Bank Management System

</footer>


</body>
</html>