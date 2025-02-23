<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Emailsend.aspx.cs" Inherits="JOB_Portal.MainMasterPages.Emailsend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F5F5F5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .message-container {
            background-color: #FFFFFF;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .message-container h2 {
            color: #FF9800;
            font-weight: bold;
        }
        .message-container i {
            font-size: 40px;
            color: #E65100;
            margin-bottom: 10px;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #FF9800;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        .btn:hover {
            background-color: #E65100;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="message-container">
        <i class="fas fa-check-circle"></i>
        <h2>Email has been submitted successfully!</h2>
        <a href="Contact.aspx" class="btn">Go to Contact Page</a>
    </div>
</asp:Content>
