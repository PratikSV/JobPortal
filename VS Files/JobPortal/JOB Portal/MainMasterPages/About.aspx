<%@ Page Title="About DreamJOB" Language="C#" MasterPageFile="/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JOB_Portal.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link href="css\About.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Hero Section -->
    <section class="section text-center bg-light">
        <div class="container">
            <h1 class="fw-bold">Your Dream Job is Just a Click Away!</h1>
            <p class="lead">At DreamJOB, we bridge the gap between job seekers and employers, helping you find the perfect career opportunity.</p>
            <a href="Findajob.aspx" class="btn btn-primary">Explore Jobs</a>
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
            <h2 class="fw-bold top">Meet Our Team</h2>
            <%--this is card team memeber card--%>
            <div class="team-card" id="pratik-card">
                <h3 class="team-name">Pratik Gaikwad</h3>
                <p class="team-info">
                    Pratik Gaikwad, 18, is a second-year BCA student at SK Somaiya College with expertise in Java, Python, C, HTML, CSS, and JavaScript. 
                    With experience as a web development intern at Shadowfox, he is passionate about web development and entrepreneurship. 
                    He started working on <strong>DremJob</strong> on <strong>February 3, 2025</strong> to create an innovative job portal.
                </p>
                <p class="team-portfolio">
                    Portfolio: <a href="https://pratiksv.github.io/portfolio/" target="_blank">Pratik's Portfolio</a>
                </p>
            </div>
            <div class="team-card">
                <h3 class="fw-bold">Vinayak Chavan</h3>
                <p class="team-info">Vinayak Chavan is a skilled web developer and collaborator on the **DremJob** project. He is dedicated to building an efficient and user-friendly job portal alongside Pratik.</p>
                <p class="team-portfolio">Portfolio: <a href="https://vinayak-chv.github.io/GitDemo/" target="_blank">Vinayak's Portfolio</a></p>
            </div>
        </div>
    </section>
        

    <!-- Testimonials -->
    <section class="section">
        <div class="container">
            <h2 class="fw-bold">Testimonials</h2>
            <p>Hear from our happy job seekers and employers who found success through DreamJOB.</p>
        </div>
    </section>
      
    <!-- Contact & Support -->
    <section class="section bg-light">
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
