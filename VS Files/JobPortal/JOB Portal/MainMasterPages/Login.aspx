<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="css\LoginandSignup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>This is login page</h1>
    <div class="wrapper">
        <h1>Login</h1>
        <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" ForeColor="Red"></asp:Label>

        <div class="input-group">
            <label for="txtEmail">
                <span>@</span>
            </label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email"></asp:TextBox>
        </div>

        <div class="input-group">
            <label for="txtPassword">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24">
                    <path d="M240-80q-33 0-56.5-23.5T160-160v-400q0-33 23.5-56.5T240-640h40v-80q0-83 58.5-141.5T480-920q83 0 141.5 58.5T680-720v80h40q33 0 56.5 23.5T800-560v400q0 33-23.5 56.5T720-80H240Zm240-200q33 0 56.5-23.5T560-360q0-33-23.5-56.5T480-440q-33 0-56.5 23.5T400-360q0 33 23.5 56.5T480-280ZM360-640h240v-80q0-50-35-85t-85-35q-50 0-85 35t-35 85v80Z"/>
                </svg>
            </label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>
        </div>

        <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Login" OnClick="btnLogin_Click" />

        <p>New here? <a href="Signup.aspx">Create an Account</a></p>
    </div>

</asp:Content>
