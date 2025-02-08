<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JOB_Portal.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            overflow-x: hidden;
            background-color: #FFFFFF;
            color: #333333;
            font-family: 'Poppins', sans-serif;
        }
        .hero-section {
            background: #FFFFFF;
            color: #333333;
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
            background-color: #FF9800;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
        .search-btn:hover {
            background-color: #E65100;
        }
        .cta-buttons {
            margin-top: 20px;
        }
        .cta-buttons .btn {
            padding: 12px 20px;
            background-color: #FF9800;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
        }
        .cta-buttons .btn:hover {
            background-color: #E65100;
        }
        .categories-section {
            height: 90vh;
            text-align: center;
            padding: 50px 0;
            width: 100%;
            background-color: #F5F5F5;
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
            background: #FFB74D;
            color: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            width: 200px;
            height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
        }
        .category-card i {
            display: block;
            font-size: 24px;
            margin-bottom: 10px;
        }
        .category-card:hover {
            background: #E65100;
        }
        .browse-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 20px;
            background-color: #FF9800;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
        }
        .browse-btn:hover {
            background-color: #E65100;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
            <a href="PostJob.aspx" class="btn">Post a Job</a>
            <a href="Jobs.aspx" class="btn">Explore Jobs</a>
        </div>
    </div>
    
    <div class="categories-section">
        <h2 class="categories-heading">Browse Top Categories</h2>
        <div class="categories-grid">
            <div class="category-card"><i class="fas fa-laptop-code"></i> IT & Software</div>
            <div class="category-card"><i class="fas fa-chart-line"></i> Finance</div>
            <div class="category-card"><i class="fas fa-bullhorn"></i> Marketing</div>
            <div class="category-card"><i class="fas fa-user-md"></i> Healthcare</div>
            <div class="category-card"><i class="fas fa-cogs"></i> Engineering</div>
            <div class="category-card"><i class="fas fa-book-open"></i> Education</div>
            <div class="category-card"><i class="fas fa-handshake"></i> Sales</div>
            <div class="category-card"><i class="fas fa-headset"></i> Customer Service</div>
        </div>
        <a href="FindaJob.aspx" class="browse-btn">Browse all categories</a>
    </div>
</asp:Content>
