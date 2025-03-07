<%@ Page Title="Job Seeker Signup" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('images/loginandsignup/Signuppageimage.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .form-container {
            background: #FFFFFF;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
            margin-top: 100px; 
        }
        .form-group {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 2px solid #FF9800;
            border-radius: 4px;
            background: #FFFFFF;
            font-family: 'Poppins', sans-serif;
        }
        .btn-primary {
            background-color: #FF9800;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            cursor: pointer;
            border-radius: 4px;
            font-family: 'Poppins', sans-serif;
            transition: transform 0.1s ease-in-out;
        }
        .btn-primary:hover {
            background-color: #E65100;
        }
        .btn-primary:active {
            transform: scale(0.95);
        }
        h2 {
            font-weight: bold;
            text-align: center;
            font-family: 'Poppins', sans-serif;
            margin-bottom: 20px;
        }
        h3{
            text-align:center;
            font-family: 'Poppins',sans-serif;
            margin-bottom:20px;
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
            font-family: 'Poppins', sans-serif;
        }
        .login-link a {
            color: #FF9800;
            text-decoration: none;
            font-weight: bold;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
        label {
            margin-right: 10px;
            display:block;
        }
        .message {
            text-align: center;
            font-weight: bold;
            margin-bottom: 10px;
        }
         .custom-footer {
            background-color: #333333;
            color: white; 
            text-align: center;
            padding: 20px 0;
            margin-top: 50px; 
            margin-bottom:0px;
            width: 100%;
            height: 100px; 
            display: flex;
            flex-direction: column;
            justify-content: center; 
            align-items: center; 
        }
        .custom-footer a {
            color: #FF9800; 
            text-decoration: none;
            margin: 0 10px;
        }
        .custom-footer a:hover {
            color: #F57C00; 
        }
        .custom-footer p {
            margin: 5px 0; 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="background">
    <div class="form-container">
        <h2>Signup</h2>
        <h3>Create a Profile</h3>
        <asp:Label ID="lblMessage" runat="server" CssClass="message" Visible="false" />

        <div class="form-group">
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Placeholder="Full Name" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control" Placeholder="UserID" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" Placeholder="Email Address" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" Placeholder="Phone Number" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Password" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Confirm Password" />
        </div>
        
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn-primary" Text="Sign Up" OnClick="Signup_Click" />

        <div class="login-link">
            <p>Already have an account? <a href="Login.aspx">Login here</a></p>
        </div>
    </div>
   </div>
</asp:Content>
