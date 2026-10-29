<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>Blood Bank Management System</title>

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<!-- ================================
     NAVBAR
================================ -->

<nav class="navbar">

    <a href="${pageContext.request.contextPath}/" class="logo">
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

<!-- ================================
     HERO SECTION
================================ -->

<section class="hero">

    <div class="hero-content">

        <h1 class="hero-title">
            <span class="hero-icon">🩸</span>
            Blood Bank Management System
        </h1>

        <p class="hero-text">
            Connecting blood donors with people in need.
            Manage donors, blood requests and blood stock
            easily in one place.
        </p>

        <a href="${pageContext.request.contextPath}/donorForm"
           class="hero-btn">

            Register as Donor

        </a>

    </div>

</section>


<!-- ================================
     MAIN CONTENT
================================ -->

<main class="main-container">

    <h2 class="section-title">
        Blood Bank Services
    </h2>

    <p class="section-subtitle">
        Manage all blood bank activities efficiently
        from one place
    </p>


   

    <!-- SERVICE CARDS -->
<div class="services">

    <!-- BLOOD DONORS -->
    <div class="service-card">

        <div class="service-icon">👨‍⚕️</div>

        <h3>Blood Donors</h3>

        <p>
            Register new donors and manage donor
            information easily.
        </p>

        <div class="card-links">

            <a href="${pageContext.request.contextPath}/donorForm"
               class="card-btn">
                Register Donor
            </a>

            <a href="${pageContext.request.contextPath}/viewDonors"
               class="card-btn secondary">
                View Donors
            </a>

        </div>
    </div>


    <!-- BLOOD REQUESTS -->
    <div class="service-card">

        <div class="service-icon">🏥</div>

        <h3>Blood Requests</h3>

        <p>
            Create and manage blood requests from
            patients and hospitals.
        </p>

        <div class="card-links">

            <a href="${pageContext.request.contextPath}/bloodRequest"
               class="card-btn">
                New Request
            </a>

            <a href="${pageContext.request.contextPath}/viewBloodRequests"
               class="card-btn secondary">
                View Requests
            </a>

        </div>
    </div>


    <!-- BLOOD STOCK -->
    <div class="service-card">

        <div class="service-icon">🩸</div>

        <h3>Blood Stock</h3>

        <p>
            Manage available blood units and maintain
            blood stock records.
        </p>

        <div class="card-links">

            <a href="${pageContext.request.contextPath}/bloodStock"
               class="card-btn">
                Add Stock
            </a>

            <a href="${pageContext.request.contextPath}/viewBloodStock"
               class="card-btn secondary">
                View Stock
            </a>

        </div>
    </div>

</div>

    <!-- ================================
         SEARCH BLOOD DONOR
    ================================= -->

    <div class="search-section">

        <h2 class="search-title">
            🔎 Find Blood Donor
        </h2>

        <p class="search-description">
            Search available donors according to
            their blood group.
        </p>

        <form action="${pageContext.request.contextPath}/searchDonor"
              method="get"
              class="search-box">

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
                    class="search-btn">

                Search Donor

            </button>

        </form>

    </div>

</main>


<!-- ================================
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