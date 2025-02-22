<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #F5E3C3;
            font-family: 'Poppins', sans-serif;
        }
        .profile-container {
            padding: 40px;
            max-width: 700px;
            margin: auto;
            background: #1E3A5F;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 5rem;
        }
        .page-title {
            font-size: 28px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 25px;
            color: whitesmoke;
        }
        .profile-section {
            margin-bottom: 15px;
        }
        .profile-section label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
            color: white;
        }
        .profile-input {
            width: 100%;
            padding: 10px;
            border: 1px solid black;
            border-radius: 5px;
            font-size: 16px;
            background-color: #2c4a70;
            color: white;
        }
        .profile-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 16px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: all 0.3s;
        }
        .btn-save {
            background: linear-gradient(135deg, #ff8c42, #ff3c83);
            transition: all 0.3s ease-in-out;
            color: white;
        }
        .btn-save:hover {
            background: linear-gradient(135deg, #ff6b00, #d8005f);
            transform: scale(1.05);
        }
        .btn-cancel {
            background: linear-gradient(135deg, #6b7b8c, #a1b1c9);
            transition: all 0.3s ease-in-out;
            color: white;
        }
        .btn-cancel:hover {
            background: linear-gradient(135deg, #556070, #8a9bb3);
            transform: scale(1.05);
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="profile-container">
        <h2 class="page-title">Employer Profile</h2>
        
        <div class="profile-section">
            <label>Company Logo</label>
            <asp:FileUpload class="profile-input" runat="server"/>
        </div>
        
        <div class="profile-section">
            <label>Company Name</label>
            <asp:TextBox class="profile-input" placeholder="Tech Innovators" runat="server"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Industry</label>
            <asp:TextBox class="profile-input" placeholder="Software Development" runat="server"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Company Description</label>
            <asp:TextBox class="profile-input" placeholder="We are a leading software development company..." runat="server" Rows="3"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Email</label>
            <asp:TextBox class="profile-input" placeholder="hr@techinnovators.com" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Phone</label>
            <asp:TextBox class="profile-input" placeholder="+1 234 567 8901" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Company Address</label>
            <asp:TextBox class="profile-input" placeholder="1234 Innovation Drive, Tech City" runat="server" Rows="3"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Change Password</label>
            <asp:TextBox class="profile-input" placeholder="Enter new password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        
        <div class="profile-section">
            <label>Notification Preferences</label>
            <asp:DropDownList ID="ddlVisibility" runat="server" class="profile-input">
                <asp:ListItem Text="-- Select Notification Type --" />
                <asp:ListItem Text="Email Notification" />
                <asp:ListItem Text="SMS Notification" />
                <asp:ListItem Text="Push Notification" />
            </asp:DropDownList>
        </div>
        
        <div class="profile-section">
            <label>Privacy Settings</label>
            <asp:DropDownList ID="DropDownList1" runat="server" class="profile-input">
                <asp:ListItem Text="-- Select Privacy Settings --" />
                <asp:ListItem Text="Public" />
                <asp:ListItem Text="Private" />
            </asp:DropDownList>
        </div>
        
        <div class="profile-buttons">
            <button class="btn btn-save">Save Changes</button>
            <button class="btn btn-cancel">Cancel</button>
        </div>
    </div>
</asp:Content>
