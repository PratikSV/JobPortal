<%@ Page Title="About DreamJOB" MasterPageFile="/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JOB_Portal.WebForm2" %>

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
            <p>Vinayak Chavan : <a href="https://vinayak-chv.github.io/GitDemo/" target="_blank">Vinayak's Portfolio</a></p>
            <p>Pratik Gaikwad : <a href="https://pratiksv.github.io/portfolio/" target="_blank">Pratik's Portfolio</a></p>
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
