<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #fff4e6;
            font-family: 'Poppins', sans-serif;
        }
        .profile-container {
            padding: 40px;
            max-width: 700px;
            margin: auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 5rem;
        }
        .page-title {
            font-size: 28px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }
        .profile-section {
            margin-bottom: 15px;
        }
        .profile-section label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
        }
        .profile-input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
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
            background: #007bff;
            color: white;
        }
        .btn-save:hover {
            background: #0056b3;
        }
        .btn-cancel {
            background: #dc3545;
            color: white;
        }
        .btn-cancel:hover {
            background: #c82333;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="profile-container">
        <h2 class="page-title">Employer Profile</h2>
        
        <div class="profile-section">
            <label>Company Logo</label>
            <input type="file" class="profile-input" />
        </div>
        
        <div class="profile-section">
            <label>Company Name</label>
            <input type="text" class="profile-input" value="Tech Innovators" />
        </div>
        
        <div class="profile-section">
            <label>Industry</label>
            <input type="text" class="profile-input" value="Software Development" />
        </div>
        
        <div class="profile-section">
            <label>Company Description</label>
            <textarea class="profile-input">We are a leading software development company...</textarea>
        </div>
        
        <div class="profile-section">
            <label>Email</label>
            <input type="email" class="profile-input" value="hr@techinnovators.com" />
        </div>
        
        <div class="profile-section">
            <label>Phone</label>
            <input type="text" class="profile-input" value="+1 234 567 8901" />
        </div>
        
        <div class="profile-section">
            <label>Company Address</label>
            <textarea class="profile-input">1234 Innovation Drive, Tech City</textarea>
        </div>
        
        <div class="profile-section">
            <label>Change Password</label>
            <input type="password" class="profile-input" placeholder="Enter new password" />
        </div>
        
        <div class="profile-section">
            <label>Notification Preferences</label>
            <select class="profile-input">
                <option>Email Notifications</option>
                <option>SMS Notifications</option>
                <option>Push Notifications</option>
            </select>
        </div>
        
        <div class="profile-section">
            <label>Privacy Settings</label>
            <select class="profile-input">
                <option>Public</option>
                <option>Private</option>
            </select>
        </div>
        
        <div class="profile-buttons">
            <button class="btn btn-save">Save Changes</button>
            <button class="btn btn-cancel">Cancel</button>
        </div>
    </div>
</asp:Content>
