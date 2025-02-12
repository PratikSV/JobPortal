<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>This is register page</h1>
</asp:Content>--%>

<%@ Page Title="Job Seeker Signup" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #F5F5F5;
            font-family: Arial, sans-serif;
        }
        .form-container {
            background: #FFFFFF;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
            margin-top: 100px; /* Added space for the navbar */
        }
        .form-group {
            margin-bottom: 15px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #FF9800;
            border-radius: 4px;
            background: #FFFFFF;
        }
        .btn-primary {
            background-color: #FF9800;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            cursor: pointer;
            border-radius: 4px;
        }
        .btn-primary:hover {
            background-color: #E65100;
        }
        h2 {
            color: #333333;
            text-align: center;
        }
        .navbar {
            background-color: #333333;
            padding: 15px;
        }
        .navbar a:hover {
            color: #FF9800;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h2>Job Seeker Signup</h2>
        <div class="form-group">
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Placeholder="Full Name" />
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
        <div class="form-group">
            <asp:FileUpload ID="fileProfilePic" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" Placeholder="Skills (e.g., Java, Python, Web Development)" />
        </div>
        <div class="form-group">
            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-control">
                <asp:ListItem Text="Fresher" Value="Fresher"></asp:ListItem>
                <asp:ListItem Text="1-3 years" Value="1-3"></asp:ListItem>
                <asp:ListItem Text="3+ years" Value="3+"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtCurrentJob" runat="server" CssClass="form-control" Placeholder="Current Job Role & Company (if any)" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Expected Salary (Optional)" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" Placeholder="Highest Qualification" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtUniversity" runat="server" CssClass="form-control" Placeholder="University/College Name" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Year of Passing" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtLocations" runat="server" CssClass="form-control" Placeholder="Preferred Job Locations" />
        </div>
        <div class="form-group">
            <asp:DropDownList ID="ddlEmploymentType" runat="server" CssClass="form-control">
                <asp:ListItem Text="Full-time" Value="Full-time"></asp:ListItem>
                <asp:ListItem Text="Part-time" Value="Part-time"></asp:ListItem>
                <asp:ListItem Text="Internship" Value="Internship"></asp:ListItem>
                <asp:ListItem Text="Freelance" Value="Freelance"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn-primary" Text="Sign Up" />
    </div>
</asp:Content>
