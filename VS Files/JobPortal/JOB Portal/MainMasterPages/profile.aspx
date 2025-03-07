<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="profile-edit.aspx.cs" Inherits="JOB_Portal.MainMasterPages.ProfileEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        body {
            background-color: #ffffff; 
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        
        .login-message-container {
            max-width: 600px;
            margin: 100px auto;
            background-color: #222; 
            color: #fff;
            text-align: center;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .login-message-container h3 {
            font-size: 22px;
            font-weight: 600;
        }
        .login-btn {
            background: #FF8800;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
        }
        .login-btn:hover {
            background: #E06A00;
            transform: scale(1.05);
        }

        
        .profile-container {
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        .profile-header {
            background-color: #333;
            color: white;
            padding: 30px;
            text-align: center;
            display: flex;
            justify-content: space-around;
        }
        .profile-header img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 3px solid #666;
            border-radius: 50%;
        }
        .profile-header h2 {
            margin: 15px 0 5px;
            font-size: 1.75rem;
            font-weight: 600;
            color: #FF8800; 
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
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
        .edit-btn {
            background: #FF8800; 
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }
        .edit-btn:hover {
            background: #E06A00;
            transform: scale(1.05);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Login Required Message -->
    <div id="loginMessage" runat="server" visible="false" class="login-message-container">
        <h3>First login to view the profile</h3>
        <asp:Button ID="btnRedirectToLogin" runat="server" CssClass="login-btn mt-3" Text="Go to Login Page" OnClick="btnRedirectToLogin_Click" />
    </div>

    <!-- Profile Content -->
    <div id="profileContainer" runat="server">
        <div class="profile-container">
            <div class="profile-header">
                <div class="left">
                    <asp:Image ID="imgProfile" runat="server" Width="150px" Height="150px" CssClass="rounded-circle" />
                    <asp:FileUpload ID="fileUploadProfile" runat="server" CssClass="form-control mt-2" Visible="false" />
                </div>
                <div class="right">
                    <h2>
                        <asp:Label ID="lblName" runat="server" />
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </h2>
                    <p>
                        <asp:Label ID="lblAboutMe" runat="server" />
                        <asp:TextBox ID="txtAboutMe" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </p>
                    <p><i class="fas fa-map-marker-alt"></i> 
                        <asp:Label ID="lblAddress" runat="server" />
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </p>
                </div>
            </div>

            <div class="profile-content">
                <div class="profile-section">
                    <h3>Experience</h3>
                    <p>
                        <asp:Label ID="lblExperience" runat="server" />
                        <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </p>
                </div>
                <div class="profile-section">
                    <h3>Education</h3>
                    <p>
                        <asp:Label ID="lblEducation" runat="server" />
                        <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </p>
                </div>
                <div class="profile-section">
                    <h3>Skills</h3>
                    <p>
                        <asp:Label ID="lblSkills" runat="server" />
                        <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    </p>
                </div>
            </div>

            <div class="text-center mt-3 mb-4">
                <asp:Button ID="btnEdit" runat="server" CssClass="edit-btn" Text="Edit" OnClick="btnEdit_Click" />
                <asp:Button ID="btnSave" runat="server" CssClass="edit-btn" Text="Save" OnClick="btnSave_Click" Visible="false" />
            </div>
        </div>
    </div>
</asp:Content>
