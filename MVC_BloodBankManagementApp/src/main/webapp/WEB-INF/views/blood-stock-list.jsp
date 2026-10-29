<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Blood Stock - BloodBank</title>


    <style>

        /* ================= GLOBAL ================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f9;
            color: #263238;
        }


        /* ================= NAVBAR ================= */

        .navbar {
            width: 100%;
            min-height: 75px;

            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );

            display: flex;
            align-items: center;

            padding: 0 5%;

            box-shadow: 0 3px 12px rgba(0,0,0,0.18);
        }

        .nav-logo {
            color: white;

            font-size: 23px;

            font-weight: bold;

            white-space: nowrap;
        }

        .nav-links {
            margin-left: auto;

            display: flex;

            align-items: center;

            gap: 24px;
        }

        .nav-links a {
            color: white;

            text-decoration: none;

            font-size: 14px;

            font-weight: bold;

            white-space: nowrap;

            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #ffd6d6;
        }


        /* ================= PAGE CONTAINER ================= */

        .page-container {
            width: 92%;

            max-width: 1100px;

            margin: 45px auto;
        }


        /* ================= PAGE HEADER ================= */

        .page-header {
            text-align: center;

            margin-bottom: 30px;
        }

        .page-header h1 {
            color: #b40000;

            font-size: 34px;

            margin-bottom: 10px;
        }

        .page-header p {
            color: #666;

            font-size: 16px;
        }


        /* ================= TABLE CARD ================= */

        .table-card {
            background: white;

            padding: 30px;

            border-radius: 14px;

            box-shadow: 0 6px 22px rgba(0,0,0,0.10);

            border-top: 5px solid #d60000;
        }


        /* ================= TABLE HEADER ================= */

        .table-header {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 22px;
        }

        .table-header h2 {
            color: #b40000;

            font-size: 24px;
        }


        /* ================= ADD BUTTON ================= */

        .add-stock-btn {
            display: inline-block;

            padding: 11px 18px;

            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );

            color: white;

            text-decoration: none;

            border-radius: 7px;

            font-size: 14px;

            font-weight: bold;

            transition: 0.3s;
        }

        .add-stock-btn:hover {
            background: #a80000;

            transform: translateY(-2px);
        }


        /* ================= TABLE ================= */

        .table-wrapper {
            width: 100%;

            overflow-x: auto;
        }

        .stock-table {
            width: 100%;

            border-collapse: collapse;
        }

        .stock-table thead {
            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );
        }

        .stock-table th {
            color: white;

            padding: 15px;

            text-align: left;

            font-size: 14px;
        }

        .stock-table td {
            padding: 15px;

            border-bottom: 1px solid #eeeeee;

            font-size: 15px;

            color: #444;
        }

        .stock-table tbody tr:hover {
            background: #fff5f5;
        }


        /* ================= BLOOD GROUP ================= */

        .blood-group {
            display: inline-block;

            background: #ffe5e5;

            color: #c40000;

            padding: 7px 14px;

            border-radius: 20px;

            font-weight: bold;

            font-size: 14px;
        }


        /* ================= UNITS ================= */

        .units {
            font-weight: bold;

            color: #b40000;

            font-size: 16px;
        }


        /* ================= ACTION ================= */

        .action-buttons {
            white-space: nowrap;
        }

        .edit-btn {
            display: inline-block;

            background: #1976d2;

            color: white;

            padding: 8px 14px;

            border-radius: 5px;

            text-decoration: none;

            font-size: 13px;

            font-weight: bold;

            margin-right: 5px;
        }

        .edit-btn:hover {
            background: #125ca1;
        }


        .delete-btn {
            display: inline-block;

            background: #d60000;

            color: white;

            padding: 8px 14px;

            border-radius: 5px;

            text-decoration: none;

            font-size: 13px;

            font-weight: bold;
        }

        .delete-btn:hover {
            background: #a80000;
        }


        /* ================= FOOTER ================= */

        .footer {
            margin-top: 50px;

            background: #263238;

            color: white;

            text-align: center;

            padding: 18px;

            font-size: 14px;
        }


        /* ================= RESPONSIVE ================= */

        @media (max-width: 1100px) {

            .navbar {
                flex-direction: column;

                padding: 20px;

                gap: 15px;
            }

            .nav-links {
                margin-left: 0;

                flex-wrap: wrap;

                justify-content: center;

                gap: 15px;
            }

        }

        @media (max-width: 600px) {

            .page-container {
                width: 95%;
            }

            .table-card {
                padding: 20px;
            }

            .table-header {
                flex-direction: column;

                gap: 15px;

                align-items: flex-start;
            }

        }

    </style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="nav-logo">
        &#x1FA78; BloodBank
    </div>


    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/donorForm">
            Register Donor
        </a>

        <a href="${pageContext.request.contextPath}/viewDonors">
            View Donors
        </a>

        <a href="${pageContext.request.contextPath}/bloodRequest">
            Blood Request
        </a>

        <a href="${pageContext.request.contextPath}/viewBloodRequests">
            View Requests
        </a>

        <a href="${pageContext.request.contextPath}/bloodStock">
            Blood Stock
        </a>

        <a href="${pageContext.request.contextPath}/viewBloodStock">
            View Stock
        </a>

    </div>

</nav>


<!-- ================= MAIN ================= -->

<div class="page-container">


    <!-- HEADER -->

    <div class="page-header">

        <h1>&#x1FA78 Available Blood Stock</h1>

        <p>
            View and manage currently available blood units.
        </p>

    </div>


    <!-- TABLE CARD -->

    <div class="table-card">


        <div class="table-header">

            <h2>Blood Stock Records</h2>


            <a href="${pageContext.request.contextPath}/bloodStock"
               class="add-stock-btn">

                + Add Blood Stock

            </a>

        </div>


        <!-- TABLE -->

        <div class="table-wrapper">

            <table class="stock-table">

                <thead>

                    <tr>

                        <th>ID</th>

                        <th>Blood Group</th>

                        <th>Available Units</th>

                        <th>Action</th>

                    </tr>

                </thead>


                <tbody>

                <%

                    java.util.List<com.bloodbank.model.BloodStock> stock =

                        (java.util.List<com.bloodbank.model.BloodStock>)

                        request.getAttribute("stock");

                    int count = 1;

                    for(com.bloodbank.model.BloodStock bs : stock) {

                %>


                    <tr>


                        <td>
                            <%= count++ %>
                        </td>


                        <td>

                            <span class="blood-group">

                                <%= bs.getBloodGroup() %>

                            </span>

                        </td>


                        <td class="units">

                            <%= bs.getUnits() %> Units

                        </td>


                        <td class="action-buttons">


                            <!-- EDIT -->

                            <a href="${pageContext.request.contextPath}/editBloodStock?id=<%= bs.getId() %>"
                               class="edit-btn">

                                Edit

                            </a>


                            <!-- DELETE -->

                            <a href="${pageContext.request.contextPath}/deleteBloodStock?id=<%= bs.getId() %>"
                               class="delete-btn"
                               onclick="return confirm('Are you sure you want to delete this stock?');">

                                Delete

                            </a>


                        </td>

                    </tr>


                <%

                    }

                %>

                </tbody>

            </table>

        </div>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer class="footer">

    © 2026 Blood Bank Management System

</footer>


</body>

</html>