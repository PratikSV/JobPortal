<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="JOB_Portal.MainMasterPages.page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #F5E3C3; 
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }
        .profile-container {
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin-top: 7rem;
        }
        .profile-header {
            background-color: #1E3A5F;
            color: white;
            padding: 30px;
            text-align: center;
            display: flex;
            justify-content: space-around;
        }
        .profile-header img {
            object-fit: cover;
            border: 2px solid #666;
            padding: 5rem 2rem;
        }
        .profile-header h2 {
            margin: 15px 0 5px;
            font-size: 1.75rem;
            font-weight: 600;
            color: white;
        }
        .profile-header p {
            font-size: 16px;
            opacity: 0.9;
        }
        .profile-content {
            padding: 20px;
        }
        .profile-section {
            margin-bottom: 20px;
            padding: 15px;
            border-radius: 8px;
            background: #f8f8f8;
        }
        .profile-section h3 {
            margin-bottom: 10px;
            font-size: 18px;
            color: #333;
        }
        .edit-btn {
            background: linear-gradient(135deg, #D97706, #C89F57);
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }
        .edit-btn:hover {
            background: linear-gradient(135deg, #B65E04, #A07844);
            transform: scale(1.05);
        }

        .edit-btn:active {
            transform: scale(0.95);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="profile-container">
        <div class="profile-header">
            <div class="left"><img src="profile-placeholder.jpg" alt="Profile Picture"></div>

            <div class="right">
                <h2>John Doe</h2>
                <p>Software Developer | Open to Work</p>
                <p><i class="fas fa-map-marker-alt"></i> New York, USA</p>
                <asp:Button ID="btnEditProfile" runat="server" CssClass="edit-btn" Text="Edit Profile" />
            </div>
        </div>
        <div class="profile-content">
            <div class="profile-section">
                <h3>About Me</h3>
                <p>Experienced software developer specializing in full-stack web development...</p>
            </div>
            <div class="profile-section">
                <h3>Experience</h3>
                <p>Software Engineer at Google (2021 - Present)</p>
                <p>Web Developer at Microsoft (2018 - 2021)</p>
            </div>
            <div class="profile-section">
                <h3>Education</h3>
                <p>BSc in Computer Science - MIT (2014 - 2018)</p>
            </div>
            <div class="profile-section">
                <h3>Skills</h3>
                <span class="badge bg-primary">Java</span>
                <span class="badge bg-secondary">Python</span>
                <span class="badge bg-success">JavaScript</span>
            </div>
        </div>
    </div>
</asp:Content>
