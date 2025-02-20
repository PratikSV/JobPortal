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
            font-family: 'Poppins', sans-serif;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="background">
    <div class="form-container">
        <h2>Signup</h2>
        <h3>Create a Profile</h3>
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
            <label for="fileResume">Enter CV:</label>
            <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control"  />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" Placeholder="Skills (e.g., Java, Python, Web Development)" />
        </div>
        <div class="form-group">
            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-control" AutoPostBack="True">
                <asp:ListItem Text="Select here" Value="Select here"></asp:ListItem>
                <asp:ListItem Text="Fresher" Value="Fresher"></asp:ListItem>
                <asp:ListItem Text="1-3 years" Value="1-3"></asp:ListItem>
                <asp:ListItem Text="3+ years" Value="3+"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtCurrentJob" runat="server" CssClass="form-control" Placeholder="Current Job Role & Company (if any)" Visible="False" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Expected Salary (Optional)" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" Placeholder="Highest Qualification" Visible="True" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtUniversity" runat="server" CssClass="form-control" Placeholder="University/College Name" />
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Year of Passing" />
        </div>
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn-primary" Text="Sign Up" />
        <div class="login-link">
            <p>Already have an account? <a href="Login.aspx">Login here</a></p>
        </div>
    </div>
   </div>
</asp:Content>
