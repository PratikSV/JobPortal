 <%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="css\LoginandSignup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
        <h1>Login</h1>
        <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" ForeColor="Red"></asp:Label>

        <div class="input-group">
           
            <asp:TextBox ID="userID" runat="server" CssClass="input" placeholder="UserID"></asp:TextBox>
        </div>

        <div class="input-group">
            
            <asp:TextBox ID="password" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>
        </div>

        <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Login" OnClick="btnLogin_Click" />

        <p>New here? <a href="Signup.aspx">Create an Account</a></p>
    </div>

</asp:Content>
