<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Update Donor - BloodBank</title>

    <style>

        /* =========================
           GLOBAL
        ========================= */

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


        /* =========================
           NAVBAR
        ========================= */

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


        /* =========================
           PAGE
        ========================= */

        .page-container {
            min-height: calc(100vh - 75px);

            display: flex;

            justify-content: center;

            align-items: center;

            padding: 40px 20px;
        }


        /* =========================
           FORM CARD
        ========================= */

        .form-card {
            width: 100%;
            max-width: 650px;

            background: white;

            padding: 40px;

            border-radius: 16px;

            box-shadow: 0 8px 25px rgba(0,0,0,0.10);

            border-top: 5px solid #d60000;
        }


        /* =========================
           HEADING
        ========================= */

        .form-card h1 {
            text-align: center;

            color: #b40000;

            font-size: 32px;

            margin-bottom: 10px;
        }

        .form-description {
            text-align: center;

            color: #666;

            font-size: 16px;

            margin-bottom: 30px;
        }


        /* =========================
           FORM GROUP
        ========================= */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;

            font-weight: bold;

            margin-bottom: 8px;

            color: #263238;
        }

        .form-group input,
        .form-group select {
            width: 100%;

            padding: 13px;

            border: 1px solid #ccc;

            border-radius: 7px;

            font-size: 15px;

            outline: none;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #d60000;

            box-shadow: 0 0 5px rgba(214,0,0,0.15);
        }


        /* =========================
           BUTTONS
        ========================= */

        .button-group {
            display: flex;

            justify-content: center;

            gap: 15px;

            margin-top: 25px;
        }

        .update-btn {
            border: none;

            padding: 13px 28px;

            background: #d60000;

            color: white;

            border-radius: 7px;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;

            transition: 0.3s;
        }

        .update-btn:hover {
            background: #a80000;

            transform: translateY(-2px);
        }

        .back-btn {
            display: inline-block;

            padding: 13px 28px;

            background: #263238;

            color: white;

            border-radius: 7px;

            text-decoration: none;

            font-size: 16px;

            font-weight: bold;

            transition: 0.3s;
        }

        .back-btn:hover {
            background: #111;

            transform: translateY(-2px);
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 900px) {

            .navbar {
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

            .form-card {
                padding: 30px 25px;
            }

            .button-group {
                flex-direction: column;
            }

            .update-btn,
            .back-btn {
                width: 100%;

                text-align: center;
            }
        }

    </style>

</head>


<body>


<!-- =========================
     NAVBAR
========================= -->

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


<!-- =========================
     UPDATE FORM
========================= -->

<div class="page-container">

    <div class="form-card">

        <h1>
            ✏️ Update Donor
        </h1>

        <p class="form-description">
            Update the registered donor information below.
        </p>


        <form action="${pageContext.request.contextPath}/updateDonor"
              method="post">


            <!-- ID -->

            <input type="hidden"
                   name="id"
                   value="${donor.id}">


            <!-- NAME -->

            <div class="form-group">

                <label>
                    Full Name
                </label>

                <input type="text"
                       name="name"
                       value="${donor.name}"
                       placeholder="Enter donor name"
                       required>

            </div>


            <!-- BLOOD GROUP -->

            <div class="form-group">

                <label>
                    Blood Group
                </label>

                <select name="bloodGroup" required>

                    <option value="">
                        Select Blood Group
                    </option>

                    <option value="A+"
                        ${donor.bloodGroup == 'A+' ? 'selected' : ''}>
                        A+
                    </option>

                    <option value="A-"
                        ${donor.bloodGroup == 'A-' ? 'selected' : ''}>
                        A-
                    </option>

                    <option value="B+"
                        ${donor.bloodGroup == 'B+' ? 'selected' : ''}>
                        B+
                    </option>

                    <option value="B-"
                        ${donor.bloodGroup == 'B-' ? 'selected' : ''}>
                        B-
                    </option>

                    <option value="O+"
                        ${donor.bloodGroup == 'O+' ? 'selected' : ''}>
                        O+
                    </option>

                    <option value="O-"
                        ${donor.bloodGroup == 'O-' ? 'selected' : ''}>
                        O-
                    </option>

                    <option value="AB+"
                        ${donor.bloodGroup == 'AB+' ? 'selected' : ''}>
                        AB+
                    </option>

                    <option value="AB-"
                        ${donor.bloodGroup == 'AB-' ? 'selected' : ''}>
                        AB-
                    </option>

                </select>

            </div>


            <!-- MOBILE -->

            <div class="form-group">

                <label>
                    Mobile Number
                </label>

                <input type="text"
                       name="mobile"
                       value="${donor.mobile}"
                       placeholder="Enter mobile number"
                       required>

            </div>


            <!-- EMAIL -->

            <div class="form-group">

                <label>
                    Email Address
                </label>

                <input type="email"
                       name="email"
                       value="${donor.email}"
                       placeholder="Enter email address"
                       required>

            </div>


            <!-- CITY -->

            <div class="form-group">

                <label>
                    City
                </label>

                <input type="text"
                       name="city"
                       value="${donor.city}"
                       placeholder="Enter city"
                       required>

            </div>


            <!-- BUTTONS -->

            <div class="button-group">

                <button type="submit"
                        class="update-btn">

                    Update Donor

                </button>


                <a href="${pageContext.request.contextPath}/viewDonors"
                   class="back-btn">

                    Back to Donors

                </a>

            </div>

        </form>

    </div>

</div>


</body>

</html>