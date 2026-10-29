<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>All Blood Requests</title>

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


        /* ================= PAGE ================= */

        .page-container {
            width: 92%;

            max-width: 1250px;

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


        /* ================= TABLE ================= */

        .table-wrapper {
            width: 100%;

            overflow-x: auto;
        }

        .request-table {
            width: 100%;

            min-width: 950px;

            border-collapse: collapse;
        }

        .request-table thead {
            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );
        }

        .request-table th {
            color: white;

            padding: 15px 12px;

            text-align: left;

            font-size: 14px;

            white-space: nowrap;
        }

        .request-table td {
            padding: 14px 12px;

            border-bottom: 1px solid #eeeeee;

            font-size: 14px;

            color: #444;
        }

        .request-table tbody tr:hover {
            background: #fff5f5;
        }


        /* ================= BLOOD GROUP ================= */

        .blood-group {
            display: inline-block;

            background: #ffe5e5;

            color: #c40000;

            padding: 6px 12px;

            border-radius: 20px;

            font-weight: bold;

            font-size: 13px;
        }


        /* ================= PATIENT NAME ================= */

        .patient-name {
            font-weight: bold;

            color: #222;
        }


        /* ================= UNITS ================= */

        .units {
            font-weight: bold;

            color: #b40000;
        }


        /* ================= ACTION BUTTONS ================= */

        .action-buttons {
            white-space: nowrap;
        }

        .btn-edit {
            display: inline-block;

            background: #1976d2;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 5px;

            font-size: 13px;

            font-weight: bold;

            margin-right: 5px;
        }

        .btn-edit:hover {
            background: #125ca1;
        }


        .btn-delete {
            display: inline-block;

            background: #d60000;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 5px;

            font-size: 13px;

            font-weight: bold;
        }

        .btn-delete:hover {
            background: #a80000;
        }


        /* ================= NEW REQUEST BUTTON ================= */

        .bottom-action {
            margin-top: 25px;

            text-align: right;
        }

        .btn-new {
            display: inline-block;

            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );

            color: white;

            text-decoration: none;

            padding: 12px 20px;

            border-radius: 7px;

            font-size: 14px;

            font-weight: bold;
        }

        .btn-new:hover {
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

<!-- ================= MAIN CONTENT ================= -->

<div class="page-container">


    <!-- PAGE HEADER -->

    <div class="page-header">

         <h1>&#x1FA78; All Blood Requests</h1>

        <p>
            View and manage all blood requests submitted by patients and hospitals.
        </p>

    </div>


    <!-- TABLE CARD -->

    <div class="table-card">


        <div class="table-header">

            <h2>Blood Request Records</h2>

        </div>


        <div class="table-wrapper">

            <table class="request-table">

                <thead>

                    <tr>

                        <th>ID</th>

                        <th>Patient Name</th>

                        <th>Blood Group</th>

                        <th>Required Units</th>

                        <th>Mobile</th>

                        <th>Hospital</th>

                        <th>City</th>

                        <th>Action</th>

                    </tr>

                </thead>


                <tbody>

                <%

                    java.util.List<com.bloodbank.model.BloodRequest> requests =

                        (java.util.List<com.bloodbank.model.BloodRequest>)

                        request.getAttribute("requests");

                    int count = 1;

                    for(com.bloodbank.model.BloodRequest br : requests) {

                %>


                    <tr>

                        <td>
                            <%= count++ %>
                        </td>


                        <td class="patient-name">
                            <%= br.getPatientName() %>
                        </td>


                        <td>

                            <span class="blood-group">
                                <%= br.getBloodGroup() %>
                            </span>

                        </td>


                        <td class="units">
                            <%= br.getRequiredUnits() %>
                        </td>


                        <td>
                            <%= br.getMobile() %>
                        </td>


                        <td>
                            <%= br.getHospital() %>
                        </td>


                        <td>
                            <%= br.getCity() %>
                        </td>


                        <td class="action-buttons">


                            <!-- EDIT -->

                            <a href="${pageContext.request.contextPath}/editBloodRequest?id=<%= br.getId() %>"
                               class="btn-edit">

                                Edit

                            </a>


                            <!-- DELETE -->

                            <a href="${pageContext.request.contextPath}/deleteBloodRequest?id=<%= br.getId() %>"
                               class="btn-delete"
                               onclick="return confirm('Are you sure you want to delete this request?');">

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


        <!-- NEW REQUEST -->

        <div class="bottom-action">

            <a href="${pageContext.request.contextPath}/bloodRequest"
               class="btn-new">

                + New Blood Request

            </a>

        </div>


    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer class="footer">

    © 2026 Blood Bank Management System

</footer>


</body>

</html>