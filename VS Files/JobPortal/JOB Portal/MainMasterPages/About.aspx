<%@ Page Title="" Language="C#" MasterPageFile="/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JOB_Portal.WebForm2" %>

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
                <img src="\images\logo.png" />
            </div>
        </div>
    </section>

    <section class="vision">
        <div class="left-vision">
            <img src="#" />
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
            <img src="#" />
        </div>
    </section>

    <section class="who">
        <div class="left-who">
            <img src="#" />
        </div>

        <div class="right-who">
            <h2 class="who-head">Who We Are?</h2>
            <p>Dream Jobs is a leading job portal designed to help job seekers find their perfect career opportunities while enabling companies to connect with top talent. Our platform is built to simplify the hiring process by providing a seamless and efficient job search experience. With a vast database of job listings across various industries, we ensure that professionals can explore, apply, and secure their dream jobs with ease.<br />
               At Dream Jobs, we believe that job searching should be more than just a process—it should be an experience that leads to personal and professional growth. That’s why we are dedicated to offering reliable job listings, AI-powered recommendations, and career-building resources to help every individual succeed.</p>
        </div>
    </section>
</asp:Content>
