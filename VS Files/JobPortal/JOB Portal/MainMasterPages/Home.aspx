<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JOB_Portal.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link href="css\HomeBG.css" rel="stylesheet" />
    <style>

        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            overflow-x: hidden;
            color: #333333;
            font-family: 'Poppins', sans-serif;
        }
        .hero-section {
            text-align: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            width: 100%;
        }
        .hero-heading {
            font-size: 48px;
            font-weight: bold;
            color: #333333;
        }
        .hero-subtext {
            font-size: 20px;
            margin-top: 10px;
            opacity: 0.9;
            color: #333333;
        }
        .search-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .search-container input, .search-container select {
            padding: 10px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #FF9800;
            background: #FFFFFF;
            color: #333333;
        }
        .search-btn {
            background: linear-gradient(135deg, #D97706, #C89F57);
            transition: all 0.3s ease-in-out;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
        .search-btn:hover {
            background: linear-gradient(135deg, #B65E04, #A07844);
            transform: scale(1.05);
        }
        .cta-buttons {
            margin-top: 20px;
        }
        .cta-buttons .btn {
            padding: 12px 20px;
            background: linear-gradient(135deg, #D97706, #C89F57);
            transition: all 0.3s ease-in-out;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
        }
        .cta-buttons .btn:hover {
            background: linear-gradient(135deg, #B65E04, #A07844);
            transform: scale(1.05);
        }
        .categories-section {
            text-align: center;
            padding: 50px 0;
            width: 100%;
        }
        .categories-heading {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333333;
        }
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            width: 100%;
            max-width: 1200px;
            margin: auto;
        }
        .category-card {
/*            border: 2px solid #FF9800;*/
            color: #333333;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            cursor: pointer;
            width: 220px;
            height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
            background: rgba(255, 255, 255, 0.7);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        .category-card i {
            display: block;
            font-size: 40px;
            margin-bottom: 10px;
        }
        .category-card p {
            font-size: 14px;
        }
        .category-card:hover {
            transform: scale(1.1);
            background: rgba(255, 255, 255, 0.9);
        }
        .browse-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 20px;
            background: linear-gradient(135deg, #D97706, #C89F57);
            transition: all 0.3s ease-in-out;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
        }
        .browse-btn:hover {
            background: linear-gradient(135deg, #B65E04, #A07844);
            transform: scale(1.05);
        }
        .bg{
          background: rgba(255, 255, 255, 0.7); /* White background with 50% visibility */
          padding: 20px;
          border-radius: 10px;  
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center">
    </div>
    <div class="hero-section">
        <h1 class="hero-heading">Find Your Dream Job Today!</h1>
        <p class="hero-subtext">Explore top companies and apply for the best opportunities.</p>
        
        <div class="search-container">
            <input type="text" placeholder="Job Title / Keywords" />
            <input type="text" placeholder="Location" />
            <select>
                <option value="">Category</option>
                <option value="IT">IT</option>
                <option value="Finance">Finance</option>
                <option value="Marketing">Marketing</option>
            </select>
            <button class="search-btn">Search</button>
        </div>
        
        <div class="cta-buttons">
            
            <a href="Jobs.aspx" class="btn">Explore Jobs</a>
        </div>
    </div>
    
    <div class="categories-section bg">
        <h2 class="categories-heading">Browse Top Categories</h2>
        <div class="categories-grid">
            <div class="category-card"><i class="fas fa-laptop-code"></i> <strong>IT & Software</strong> <p>Software development, cybersecurity, and more.</p></div>
            <div class="category-card"><i class="fas fa-chart-line"></i> <strong>Finance</strong> <p>Accounting, banking, and financial analysis.</p></div>
            <div class="category-card"><i class="fas fa-bullhorn"></i> <strong>Marketing</strong> <p>Digital marketing, SEO, and advertising.</p></div>
            <div class="category-card"><i class="fas fa-user-md"></i> <strong>Healthcare</strong> <p>Medical, nursing, and healthcare services.</p></div>
            <div class="category-card"><i class="fas fa-cogs"></i> <strong>Engineering</strong> <p>Mechanical, electrical, and civil engineering.</p></div>
            <div class="category-card"><i class="fas fa-book-open"></i> <strong>Education</strong> <p>Teaching, training, and academic research.</p></div>
            <div class="category-card"><i class="fas fa-handshake"></i> <strong>Sales</strong> <p>Retail, B2B sales, and business development.</p></div>
            <div class="category-card"><i class="fas fa-headset"></i> <strong>Customer Service</strong> <p>Support, tele-calling, and client handling.</p></div>
        </div>
        <a class="browse-btn" href="Findajob.aspx">Browse all categories</a>
    </div>
</asp:Content>
