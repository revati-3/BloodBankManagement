<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Register Donor - BloodBank</title>

<style>

/* ==============================
   RESET
================================ */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: #f4f7fb;
    color: #263238;
}


/* ==============================
   NAVBAR
================================ */

.navbar {
    width: 100%;
    height: 75px;
    background: linear-gradient(90deg, #b40000, #e60012);

    display: flex;
    align-items: center;

    padding: 0 60px;

    box-shadow: 0 3px 12px rgba(0,0,0,0.20);
}


/* LOGO */

.logo {
    color: white;
    text-decoration: none;

    font-size: 24px;
    font-weight: bold;

    white-space: nowrap;
}


/* NAVIGATION */

.navbar ul {
    margin-left: auto;

    display: flex;

    align-items: center;

    list-style: none;

    gap: 25px;
}


/* REMOVE BULLETS */

.navbar ul li {
    list-style: none;
}


/* LINKS */

.navbar ul li a {
    color: white;

    text-decoration: none;

    font-size: 15px;

    font-weight: bold;

    padding: 8px 5px;

    display: block;

    transition: 0.3s;
}


/* HOVER */

.navbar ul li a:hover {
    color: #ffdada;

    transform: translateY(-1px);
}


/* ==============================
   PAGE AREA
================================ */

.page-container {
    min-height: calc(100vh - 75px);

    display: flex;

    justify-content: center;

    align-items: flex-start;

    padding: 50px 20px;
}


/* ==============================
   FORM CARD
================================ */

.form-card {
    width: 100%;

    max-width: 650px;

    background: white;

    padding: 40px 45px;

    border-radius: 16px;

    border-top: 5px solid #d60000;

    box-shadow: 0 8px 30px rgba(0,0,0,0.10);
}


/* ==============================
   FORM HEADER
================================ */

.form-header {
    text-align: center;

    margin-bottom: 30px;
}

.form-icon {
    font-size: 42px;

    margin-bottom: 10px;
}

.form-header h1 {
    color: #b40000;

    font-size: 30px;

    margin-bottom: 8px;
}

.form-header p {
    color: #666;

    font-size: 16px;
}


/* ==============================
   FORM GROUP
================================ */

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;

    font-size: 15px;

    font-weight: bold;

    margin-bottom: 8px;

    color: #263238;
}


/* ==============================
   INPUT
================================ */

.form-group input,
.form-group select {

    width: 100%;

    height: 48px;

    padding: 0 14px;

    border: 1px solid #d0d5db;

    border-radius: 8px;

    font-size: 15px;

    background: white;

    outline: none;
}


/* INPUT FOCUS */

.form-group input:focus,
.form-group select:focus {

    border-color: #d60000;

    box-shadow: 0 0 0 3px rgba(214,0,0,0.10);
}


/* ==============================
   BUTTON
================================ */

.register-btn {

    width: 100%;

    height: 50px;

    border: none;

    border-radius: 8px;

    background: linear-gradient(90deg, #c40000, #e60012);

    color: white;

    font-size: 16px;

    font-weight: bold;

    cursor: pointer;

    margin-top: 5px;

    transition: 0.3s;
}

.register-btn:hover {

    background: linear-gradient(90deg, #a80000, #c90000);

    transform: translateY(-2px);

    box-shadow: 0 5px 15px rgba(180,0,0,0.25);
}


/* ==============================
   FOOTER
================================ */

.footer {

    text-align: center;

    background: #263238;

    color: white;

    padding: 18px;

    font-size: 14px;
}


/* ==============================
   RESPONSIVE
================================ */

@media (max-width: 1000px) {

    .navbar {
        padding: 0 25px;
    }

    .navbar ul {
        gap: 12px;
    }

    .navbar ul li a {
        font-size: 13px;
    }
}


@media (max-width: 750px) {

    .navbar {
        height: auto;

        padding: 15px 20px;

        flex-direction: column;

        gap: 12px;
    }

    .navbar ul {
        margin-left: 0;

        flex-wrap: wrap;

        justify-content: center;
    }

    .page-container {
        padding: 30px 15px;
    }

    .form-card {
        padding: 30px 25px;
    }
}

</style>

</head>


<body>


<!-- ==============================
     NAVBAR
================================ -->

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


<!-- ==============================
     FORM
================================ -->

<div class="page-container">

    <div class="form-card">


        <!-- HEADER -->

        <div class="form-header">

            <div class="form-icon">
                🩸
            </div>

            <h1>
                Blood Donor Registration
            </h1>

            <p>
                Register as a blood donor and help save lives.
            </p>

        </div>


        <!-- FORM -->

        <form action="${pageContext.request.contextPath}/addDonor"
              method="post">


            <!-- NAME -->

            <div class="form-group">

                <label for="name">
                    Full Name
                </label>

                <input type="text"
                       id="name"
                       name="name"
                       placeholder="Enter donor name"
                       required>

            </div>


            <!-- BLOOD GROUP -->

            <div class="form-group">

                <label for="bloodGroup">
                    Blood Group
                </label>

                <select id="bloodGroup"
                        name="bloodGroup"
                        required>

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


            <!-- MOBILE -->

            <div class="form-group">

                <label for="mobile">
                    Mobile Number
                </label>

                <input type="text"
                       id="mobile"
                       name="mobile"
                       placeholder="Enter mobile number"
                       required>

            </div>


            <!-- EMAIL -->

            <div class="form-group">

                <label for="email">
                    Email Address
                </label>

                <input type="email"
                       id="email"
                       name="email"
                       placeholder="Enter email address">

            </div>


            <!-- CITY -->

            <div class="form-group">

                <label for="city">
                    City
                </label>

                <input type="text"
                       id="city"
                       name="city"
                       placeholder="Enter city"
                       required>

            </div>


            <!-- BUTTON -->

            <button type="submit"
                    class="register-btn">

                Register Donor

            </button>


        </form>

    </div>

</div>


<!-- ==============================
     FOOTER
================================ -->

<footer class="footer">

    <p>
        © 2026 BloodBank Management System |
        Designed for efficient blood management
    </p>

</footer>


</body>

</html>