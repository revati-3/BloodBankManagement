<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Donor Registered - BloodBank</title>

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

            box-shadow: 0 3px 12px rgba(0,0,0,0.18);
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
           SUCCESS SECTION
        ================================= */

        .success-container {
            min-height: calc(100vh - 75px);

            display: flex;

            justify-content: center;

            align-items: center;

            padding: 40px 20px;
        }


        /* ================================
           SUCCESS CARD
        ================================= */

        .success-card {
            width: 100%;

            max-width: 600px;

            background: white;

            padding: 45px 40px;

            text-align: center;

            border-radius: 16px;

            box-shadow:
                0 8px 25px rgba(0,0,0,0.10);

            border-top: 5px solid #d60000;
        }


        /* SUCCESS ICON */

        .success-icon {
            width: 75px;
            height: 75px;

            margin: 0 auto 20px;

            border-radius: 50%;

            background: #e8f5e9;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 40px;
        }


        /* HEADING */

        .success-card h1 {
            color: #b40000;

            font-size: 30px;

            margin-bottom: 12px;
        }


        /* MESSAGE */

        .success-message {
            color: #666;

            font-size: 17px;

            line-height: 1.6;

            margin-bottom: 30px;
        }


        /* ================================
           BUTTONS
        ================================= */

        .button-group {
            display: flex;

            justify-content: center;

            gap: 15px;

            flex-wrap: wrap;
        }

        .btn {
            display: inline-block;

            padding: 13px 24px;

            border-radius: 7px;

            text-decoration: none;

            font-size: 16px;

            font-weight: bold;

            transition: 0.3s;
        }


        /* VIEW DONORS */

        .btn-view {
            background: #d60000;

            color: white;
        }

        .btn-view:hover {
            background: #a80000;

            transform: translateY(-2px);
        }


        /* ADD ANOTHER */

        .btn-add {
            background: #263238;

            color: white;
        }

        .btn-add:hover {
            background: #111;

            transform: translateY(-2px);
        }


        /* ================================
           FOOTER
        ================================= */

        .footer {
            text-align: center;

            padding: 18px;

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

            .success-card {
                padding: 35px 25px;
            }

            .button-group {
                flex-direction: column;
            }

            .btn {
                width: 100%;
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


<!-- ================= SUCCESS ================= -->

<div class="success-container">

    <div class="success-card">

        <div class="success-icon">
            ✓
        </div>

        <h1>
            Donor Registered Successfully!
        </h1>

        <p class="success-message">
            Thank you for registering as a blood donor.
            Your information has been successfully added
            to the BloodBank system.
        </p>


        <!-- ================= BUTTONS ================= -->

        <div class="button-group">

            <a href="${pageContext.request.contextPath}/viewDonors"
               class="btn btn-view">

                View All Donors

            </a>


            <a href="${pageContext.request.contextPath}/donorForm"
               class="btn btn-add">

                Add Another Donor

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