<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Edit Blood Request</title>

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


        /* ================= FORM CONTAINER ================= */

        .form-container {
            width: 92%;
            max-width: 650px;

            margin: 50px auto;

            background: white;

            padding: 35px 40px;

            border-radius: 15px;

            box-shadow: 0 6px 25px rgba(0,0,0,0.12);

            border-top: 5px solid #d60000;
        }


        /* ================= HEADING ================= */

        .form-container h2 {
            text-align: center;

            color: #b40000;

            font-size: 30px;

            margin-bottom: 30px;
        }


        /* ================= FORM GROUP ================= */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;

            margin-bottom: 8px;

            font-size: 15px;

            font-weight: bold;

            color: #333;
        }

        .form-group input,
        .form-group select {
            width: 100%;

            padding: 12px 14px;

            border: 1px solid #ccc;

            border-radius: 7px;

            font-size: 15px;

            background: white;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;

            border-color: #d60000;

            box-shadow: 0 0 0 3px rgba(214,0,0,0.10);
        }


        /* ================= BUTTONS ================= */

        .button-area {
            display: flex;

            gap: 12px;

            margin-top: 25px;
        }

        .update-btn {
            flex: 1;

            padding: 13px;

            border: none;

            border-radius: 7px;

            background: linear-gradient(
                90deg,
                #b40000,
                #e60012
            );

            color: white;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;
        }

        .update-btn:hover {
            background: #a80000;
        }

        .back-btn {
            flex: 1;

            padding: 13px;

            border-radius: 7px;

            background: #eeeeee;

            color: #333;

            text-decoration: none;

            text-align: center;

            font-size: 16px;

            font-weight: bold;
        }

        .back-btn:hover {
            background: #dddddd;
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

            .form-container {
                padding: 25px 20px;
            }

            .button-area {
                flex-direction: column;
            }

        }

    </style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

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


<!-- ================= EDIT FORM ================= -->

<div class="form-container">

    <h2>🩸 Edit Blood Request</h2>


    <form action="${pageContext.request.contextPath}/updateBloodRequest"
          method="post">


        <!-- Hidden ID -->

        <input type="hidden"
               name="id"
               value="${bloodRequest.id}">


        <!-- Patient Name -->

        <div class="form-group">

            <label>Patient Name:</label>

            <input type="text"
                   name="patientName"
                   value="${bloodRequest.patientName}"
                   required>

        </div>


        <!-- Blood Group -->

        <div class="form-group">

            <label>Blood Group:</label>

            <select name="bloodGroup" required>

                <option value="A+"
                    ${bloodRequest.bloodGroup == 'A+' ? 'selected' : ''}>
                    A+
                </option>

                <option value="A-"
                    ${bloodRequest.bloodGroup == 'A-' ? 'selected' : ''}>
                    A-
                </option>

                <option value="B+"
                    ${bloodRequest.bloodGroup == 'B+' ? 'selected' : ''}>
                    B+
                </option>

                <option value="B-"
                    ${bloodRequest.bloodGroup == 'B-' ? 'selected' : ''}>
                    B-
                </option>

                <option value="O+"
                    ${bloodRequest.bloodGroup == 'O+' ? 'selected' : ''}>
                    O+
                </option>

                <option value="O-"
                    ${bloodRequest.bloodGroup == 'O-' ? 'selected' : ''}>
                    O-
                </option>

                <option value="AB+"
                    ${bloodRequest.bloodGroup == 'AB+' ? 'selected' : ''}>
                    AB+
                </option>

                <option value="AB-"
                    ${bloodRequest.bloodGroup == 'AB-' ? 'selected' : ''}>
                    AB-
                </option>

            </select>

        </div>


        <!-- Required Units -->

        <div class="form-group">

            <label>Required Units:</label>

            <input type="number"
                   name="requiredUnits"
                   value="${bloodRequest.requiredUnits}"
                   min="1"
                   required>

        </div>


        <!-- Mobile -->

        <div class="form-group">

            <label>Mobile:</label>

            <input type="text"
                   name="mobile"
                   value="${bloodRequest.mobile}"
                   required>

        </div>


        <!-- Hospital -->

        <div class="form-group">

            <label>Hospital:</label>

            <input type="text"
                   name="hospital"
                   value="${bloodRequest.hospital}"
                   required>

        </div>


        <!-- City -->

        <div class="form-group">

            <label>City:</label>

            <input type="text"
                   name="city"
                   value="${bloodRequest.city}"
                   required>

        </div>


        <!-- BUTTONS -->

        <div class="button-area">

            <button type="submit"
                    class="update-btn">

                Update Request

            </button>


            <a href="${pageContext.request.contextPath}/viewBloodRequests"
               class="back-btn">

                Back to Requests

            </a>

        </div>


    </form>

</div>


<!-- ================= FOOTER ================= -->

<footer class="footer">

    © 2026 Blood Bank Management System

</footer>


</body>

</html>