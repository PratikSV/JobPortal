<%--<%@ Page Title="" Language="C#" MasterPageFile="/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JOB_Portal.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
      /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        section {
            padding: 50px;
            margin: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #0073e6;
            margin-bottom: 1.5rem;
        }

        p {
            line-height: 1.6;
            font-size: 1.1rem;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        /* Flexbox Layouts */
        .about, .vision, .mission, .who {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
        }

        .left-about, .right-vision, .left-mission, .right-who {
            flex: 1;
            padding: 20px;
        }

        .right-about, .left-vision, .right-mission, .left-who {
            flex: 1;
            padding: 20px;
            text-align: center;
        }

        .right-about img, .left-vision img, .right-mission img, .left-who img {
            width: 80%;
            max-width: 400px;
        }     
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="about">
        <div class="left-about">
            <h2 class="about-head">About Dream Jobs</h2>
            <p>At Dream Jobs, we believe that finding the right job should be easy, seamless, and inspiring. Our platform connects job seekers with top companies, helping them land their dream careers. Whether you are a fresh graduate looking for your first opportunity or an experienced professional seeking career growth, Dream Jobs provides the best job listings, career resources, and expert guidance to help you succeed. <br />
               We are committed to making job searching effortless by offering personalized job recommendations, easy applications, and real-time updates. Join us today and take the first step toward your dream career!</p>

            <div class="right-about">

                <img src="#" />      <!-- Add Image here -->

            </div>
        </div>
    </section>

    <section class="vision">
        <div class="left-vision">

            <img src="#" />     <!-- Add Image here -->

        </div>

        <div class="right-vision">
            <h2 class="vision-head">Vision of Dream Jobs</h2>
            <p>At Dream Jobs, our vision is to empower every job seeker by creating a platform that seamlessly connects talent with opportunity. We aim to simplify the job search process through AI-powered recommendations, ensuring that individuals find the right jobs effortlessly. By bridging the gap between job seekers and employers, we provide a trusted space where professionals can explore verified job listings and companies can discover top talent. <br />
               We are committed to fostering career growth by offering expert resources, skill-building opportunities, and guidance to help individuals achieve their full potential. Our goal is to create an inclusive, accessible, and efficient hiring platform that transforms job searching into a smooth and rewarding experience. At Dream Jobs, we don’t just help you find a job—we help you build your dream career.</p>
        </div>
    </section>

    <section class="mission">
        <div class="left-mission">
            <h2 class="mission-head">Our Mission</h2>
            <p>At Dream Jobs, our mission is to revolutionize the job search experience by making it simple, efficient, and rewarding for job seekers and employers alike. We are committed to helping professionals find the right opportunities while enabling companies to connect with top talent effortlessly.<br />
               We strive to provide a user-friendly platform that offers personalized job recommendations, seamless application processes, and real-time updates. By leveraging technology and industry insights, we aim to bridge the gap between aspiring professionals and leading employers, ensuring that every individual has access to opportunities that align with their skills and career aspirations.<br />
               At Dream Jobs, we believe that everyone deserves a fulfilling career, and we are dedicated to making that dream a reality.</p>
        </div>

        <div class="right-mission">

            <img src="#" />     <!-- Add Image here -->

        </div>
    </section>

    <section class="who">
        <div class="left-who">

            <img src="#" />     <!-- Add Image here -->

        </div>

        <div class="right-who">
            <h2 class="who-head">Who We Are?</h2>
            <p>Dream Jobs is a leading job portal designed to help job seekers find their perfect career opportunities while enabling companies to connect with top talent. Our platform is built to simplify the hiring process by providing a seamless and efficient job search experience. With a vast database of job listings across various industries, we ensure that professionals can explore, apply, and secure their dream jobs with ease.<br />
               At Dream Jobs, we believe that job searching should be more than just a process—it should be an experience that leads to personal and professional growth. That’s why we are dedicated to offering reliable job listings, AI-powered recommendations, and career-building resources to help every individual succeed.</p>
        </div>
    </section>
</asp:Content>--%>

<%@ Page Title="About DreamJOB" Language="C#" MasterPageFile="/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JOB_Portal.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #fff4e6;
            color: #333;
            text-align: center;
        }
        .section {
            padding: 60px 0;
            min-height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .bg-light {
            background-color: #ffe8cc !important;
            color: #333;
        }
        .btn-primary {
            background: linear-gradient(135deg, #ff8c00, #ff6000);
            border: none;
            padding: 12px 25px;
            font-size: 18px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            color: white;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #e07b00, #cc5500);
            transform: scale(1.05);
        }
        .btn-primary:active {
            transform: scale(0.95);
        }
        .icon {
            font-size: 28px;
            margin-bottom: 15px;
            color: #ff8c00;
        }
        a {
            color: #ff8c00;
            text-decoration: none;
        }
        a:hover {
            color: #e07b00;
        }
        .custom-footer {
            background-color: #222;
            color: white;
            padding: 40px 0;
            text-align: center;
        }
        .custom-footer a {
            color: #ff8c00;
        }
        .custom-footer a:hover {
            color: #e07b00;
        }
        .step-card {
            background: white;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        .step-card:hover {
            transform: scale(1.05);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Hero Section -->
    <section class="section text-center bg-light">
        <div class="container">
            <h1 class="fw-bold">Your Dream Job is Just a Click Away!</h1>
            <p class="lead">At DreamJOB, we bridge the gap between job seekers and employers, helping you find the perfect career opportunity.</p>
            <button class="btn btn-primary" onclick="location.href='Jobs.aspx'">Explore Jobs</button>
        </div>
    </section>
    
    <!-- How It Works -->
    <section class="section">
        <div class="container">
            <h2 class="fw-bold text-center">How It Works?</h2>
            <div class="row mt-4">
                <div class="col-md-3">
                    <div class="step-card">
                        <div class="icon">👤</div>
                        <h4>Create an Account</h4>
                        <p>Sign up as a job seeker or employer to access opportunities.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="step-card">
                        <div class="icon">📄</div>
                        <h4>Build Your Profile</h4>
                        <p>Add your skills, experience, and resume to stand out.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="step-card">
                        <div class="icon">🔍</div>
                        <h4>Apply for Jobs</h4>
                        <p>Browse thousands of job listings and apply with ease.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="step-card">
                        <div class="icon">🏆</div>
                        <h4>Get Hired</h4>
                        <p>Connect with top recruiters and secure your dream job.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Meet Our Team -->
    <section class="section bg-light">
        <div class="container">
            <h2 class="fw-bold">Meet Our Team</h2>
            <p>Showcasing our dedicated professionals who make DreamJOB a success.</p>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section">
        <div class="container">
            <h2 class="fw-bold">Testimonials</h2>
            <p>Hear from our happy job seekers and employers who found success through DreamJOB.</p>
        </div>
    </section>
    <!-- Partner Companies -->
    <section class="section bg-light">
        <div class="container">
            <h2 class="fw-bold">Partner Companies</h2>
            <p>Connecting top talent with leading companies.</p>
        </div>
    </section>
    
    <!-- Contact & Support -->
    <section class="section">
        <div class="container">
            <h2 class="fw-bold">Contact & Support</h2>
            <p>📧 Email: support@dreamjob.com</p>
            <p>📞 Phone: +91 XXXXX XXXXX</p>
            <p>📍 Address: (If applicable)</p>
        </div>
    </section>

    <!-- Footer -->
    <footer class="custom-footer">
        <div class="container">
            <p>Quick Links: <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a> | <a href="#">FAQs</a></p>
            <p>Follow us: <a href="#">LinkedIn</a> | <a href="#">Twitter</a> | <a href="#">Facebook</a> | <a href="#">Instagram</a></p>
            <p>Subscribe to our Newsletter for job alerts & career tips!</p>
        </div>
    </footer>
</asp:Content>
