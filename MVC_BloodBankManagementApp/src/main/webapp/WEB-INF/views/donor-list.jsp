<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>All Donors - BloodBank</title>


    <style>

        /* ==============================
           RESET
        ============================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        /* ==============================
           BODY
        ============================== */

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f7fb;
            color: #263238;
        }


        /* ==============================
           NAVBAR
        ============================== */

        .navbar {
            width: 100%;
            min-height: 75px;

            background: linear-gradient(90deg, #b40000, #e60012);

            display: flex;
            align-items: center;

            padding: 0 55px;

            box-shadow: 0 3px 12px rgba(0, 0, 0, 0.20);
        }


        /* LOGO */

        .nav-logo {
            color: white;

            font-size: 23px;
            font-weight: bold;

            white-space: nowrap;
        }


        /* NAV LINKS RIGHT SIDE */

        .nav-links {
            margin-left: auto;

            display: flex;
            align-items: center;

            gap: 25px;
        }


        .nav-links a {
            color: white;

            text-decoration: none;

            font-size: 15px;
            font-weight: bold;

            padding: 8px 4px;

            transition: 0.3s;
        }


        .nav-links a:hover {
            color: #ffdada;

            transform: translateY(-1px);
        }


        /* ==============================
           MAIN CONTAINER
        ============================== */

        .page-container {
            width: 92%;

            max-width: 1250px;

            margin: 0 auto;

            padding: 45px 0 60px;
        }


        /* ==============================
           PAGE HEADER
        ============================== */

        .page-header {
            text-align: center;

            margin-bottom: 35px;
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


        /* ==============================
           SEARCH CARD
        ============================== */

        .search-card {
            background: white;

            padding: 25px 30px;

            border-radius: 12px;

            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);

            margin-bottom: 30px;

            border-left: 5px solid #d60000;
        }


        .search-card h2 {
            color: #333;

            font-size: 20px;

            margin-bottom: 18px;
        }


        .search-form {
            display: flex;

            gap: 12px;

            align-items: center;
        }


        .search-form select {
            width: 280px;

            height: 45px;

            padding: 0 12px;

            border: 1px solid #ccc;

            border-radius: 7px;

            font-size: 15px;

            background: white;

            outline: none;
        }


        .search-form select:focus {
            border-color: #d60000;

            box-shadow: 0 0 0 3px rgba(214, 0, 0, 0.10);
        }


        .btn-search {
            height: 45px;

            padding: 0 25px;

            border: none;

            border-radius: 7px;

            background: #d60000;

            color: white;

            font-size: 15px;

            font-weight: bold;

            cursor: pointer;

            transition: 0.3s;
        }


        .btn-search:hover {
            background: #a80000;

            transform: translateY(-1px);
        }


        /* ==============================
           TABLE CARD
        ============================== */

        .table-card {
            background: white;

            border-radius: 14px;

            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.09);

            padding: 25px;

            overflow: hidden;
        }


        /* TABLE HEADER */

        .table-header {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 22px;
        }


        .table-header h2 {
            color: #b40000;

            font-size: 25px;
        }


        /* ADD DONOR BUTTON */

        .btn-add {
            display: inline-block;

            padding: 11px 18px;

            background: #d60000;

            color: white;

            text-decoration: none;

            border-radius: 7px;

            font-size: 14px;

            font-weight: bold;

            transition: 0.3s;
        }


        .btn-add:hover {
            background: #a80000;

            transform: translateY(-1px);
        }


        /* ==============================
           TABLE
        ============================== */

        .table-wrapper {
            width: 100%;

            overflow-x: auto;
        }


        .donor-table {
            width: 100%;

            border-collapse: collapse;

            min-width: 900px;
        }


        /* TABLE HEADER */

        .donor-table thead th {
            background: #c90000;

            color: white;

            padding: 15px 12px;

            text-align: left;

            font-size: 14px;

            font-weight: bold;

            white-space: nowrap;
        }


        /* TABLE DATA */

        .donor-table tbody td {
            padding: 14px 12px;

            border-bottom: 1px solid #e5e5e5;

            font-size: 14px;

            vertical-align: middle;
        }


        /* ALTERNATE ROW */

        .donor-table tbody tr:nth-child(even) {
            background: #fff8f8;
        }


        /* HOVER */

        .donor-table tbody tr:hover {
            background: #fff0f0;
        }


        /* DONOR NAME */

        .donor-name {
            font-weight: bold;

            color: #333;
        }


        /* ==============================
           BLOOD GROUP
        ============================== */

        .blood-group {
            display: inline-block;

            background: #ffe1e1;

            color: #b40000;

            font-weight: bold;

            padding: 6px 11px;

            border-radius: 20px;

            min-width: 48px;

            text-align: center;
        }


        /* ==============================
           ACTION BUTTONS
        ============================== */

        .action-buttons {
            white-space: nowrap;
        }


        .btn-edit {
            display: inline-block;

            background: #1976d2;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 6px;

            font-size: 13px;

            font-weight: bold;

            margin-right: 6px;

            transition: 0.3s;
        }


        .btn-edit:hover {
            background: #125ca5;

            transform: translateY(-1px);
        }


        .btn-delete {
            display: inline-block;

            background: #d60000;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 6px;

            font-size: 13px;

            font-weight: bold;

            transition: 0.3s;
        }


        .btn-delete:hover {
            background: #a80000;

            transform: translateY(-1px);
        }


        /* ==============================
           NO DATA
        ============================== */

        .no-data {
            text-align: center;

            padding: 35px !important;

            color: #777;

            font-size: 16px;
        }


        /* ==============================
           FOOTER
        ============================== */

        .footer {
            background: #263238;

            color: white;

            text-align: center;

            padding: 20px;

            font-size: 14px;
        }


        /* ==============================
           RESPONSIVE
        ============================== */

        @media (max-width: 1100px) {

            .navbar {
                padding: 15px 25px;

                flex-direction: column;

                gap: 12px;
            }

            .nav-links {
                margin-left: 0;

                flex-wrap: wrap;

                justify-content: center;

                gap: 15px;
            }
        }


        @media (max-width: 650px) {

            .page-container {
                width: 95%;

                padding-top: 30px;
            }

            .page-header h1 {
                font-size: 27px;
            }

            .search-form {
                flex-direction: column;

                align-items: stretch;
            }

            .search-form select {
                width: 100%;
            }

            .btn-search {
                width: 100%;
            }

            .table-header {
                flex-direction: column;

                align-items: flex-start;

                gap: 15px;
            }
        }

    </style>

</head>


<body>


<!-- ==============================
     NAVBAR
================================ -->

<nav class="navbar">

    <div class="nav-logo">
        🩸 BloodBank
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



<!-- ==============================
     MAIN CONTENT
================================ -->

<div class="page-container">


    <!-- PAGE HEADER -->

    <div class="page-header">

        <h1>
            🩸 All Blood Donors
        </h1>

        <p>
            View and manage all registered blood donors.
        </p>

    </div>



    <!-- ==============================
         SEARCH
    ================================ -->

    <div class="search-card">

        <h2>
            🔍 Search Donor by Blood Group
        </h2>


        <form action="${pageContext.request.contextPath}/searchDonor"
              method="get"
              class="search-form">


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


            <button type="submit"
                    class="btn-search">

                Search

            </button>

        </form>

    </div>



    <!-- ==============================
         DONOR TABLE
    ================================ -->

    <div class="table-card">


        <div class="table-header">

            <h2>
                Registered Donors
            </h2>


            <a href="${pageContext.request.contextPath}/donorForm"
               class="btn-add">

                + Register New Donor

            </a>

        </div>



        <div class="table-wrapper">


            <table class="donor-table">


                <thead>

                    <tr>

                        <th>
                            Sr. No.
                        </th>

                        <th>
                            Name
                        </th>

                        <th>
                            Blood Group
                        </th>

                        <th>
                            Mobile
                        </th>

                        <th>
                            Email
                        </th>

                        <th>
                            City
                        </th>

                        <th>
                            Action
                        </th>

                    </tr>

                </thead>



                <tbody>


                <%

                    java.util.List<com.bloodbank.model.Donor> donors =
                        (java.util.List<com.bloodbank.model.Donor>)
                        request.getAttribute("donors");

                    int srNo = 1;

                    if (donors != null && !donors.isEmpty()) {

                        for (com.bloodbank.model.Donor d : donors) {

                %>


                    <tr>


                        <!-- SERIAL NUMBER -->

                        <td>
                            <%= srNo++ %>
                        </td>


                        <!-- NAME -->

                        <td class="donor-name">

                            <%= d.getName() %>

                        </td>


                        <!-- BLOOD GROUP -->

                        <td>

                            <span class="blood-group">

                                <%= d.getBloodGroup() %>

                            </span>

                        </td>


                        <!-- MOBILE -->

                        <td>

                            <%= d.getMobile() %>

                        </td>


                        <!-- EMAIL -->

                        <td>

                            <%= d.getEmail() %>

                        </td>


                        <!-- CITY -->

                        <td>

                            <%= d.getCity() %>

                        </td>


                        <!-- ACTION -->

                        <td class="action-buttons">


                            <a href="${pageContext.request.contextPath}/editDonor?id=<%= d.getId() %>"
                               class="btn-edit">

                                Edit

                            </a>


                            <a href="${pageContext.request.contextPath}/deleteDonor?id=<%= d.getId() %>"
                               class="btn-delete"
                               onclick="return confirm('Are you sure you want to delete this donor?');">

                                Delete

                            </a>


                        </td>


                    </tr>


                <%

                        }

                    } else {

                %>


                    <tr>

                        <td colspan="7"
                            class="no-data">

                            No donors found.

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



<!-- ==============================
     FOOTER
================================ -->

<footer class="footer">

    <p>
        © 2026 Blood Bank Management System |
        All Rights Reserved
    </p>

</footer>


</body>

</html>