<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>This is register page</h1>
</asp:Content>--%>

<%@ Page Title="Signup" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\LoginandSignup.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
        <h1>Signup</h1>
        <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" ForeColor="Red"></asp:Label>
        <asp:Panel ID="pnlSignup" runat="server">
            <div class="input-group">
                
                <asp:TextBox ID="txtFirstname" runat="server" CssClass="input" placeholder="Firstname"></asp:TextBox>
            </div>
            <div class="input-group">
                
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email"></asp:TextBox>
            </div>
            <div class="input-group">
                
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>
            <div class="input-group">
                
                <asp:TextBox ID="txtRepeatPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
            </div>
            <asp:Button ID="btnSignup" runat="server" CssClass="btn" Text="Signup" OnClick="btnSignup_Click" />
        </asp:Panel>
        <p>Already have an Account? <a href="login.aspx">Login</a></p>
    </div>
</asp:Content>
