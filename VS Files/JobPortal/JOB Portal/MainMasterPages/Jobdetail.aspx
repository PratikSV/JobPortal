<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Jobdetail.aspx.cs" Inherits="JOB_Portal.MainMasterPages.Jobdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #FFFFFF;
        }
        .job-container {
            margin: 150px auto 20px auto;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            background: #F5F5F5;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: flex-start;
        }
        .job-header {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 20px;
        }
        .job-image {
            width: 160px;
            height: 160px;
            border-radius: 10px;
            background-size: cover;
            background-position: center;
        }
        .job-header-content {
            display: flex;
            flex-direction: column;
        }
        .job-summary {
            width: 25%;
            background: #FFFFFF;
            padding: 15px;
            border: 1px solid #FFB74D;
            border-radius: 5px;
            text-align: left;
            font-size: 14px;
        }
        .btn-apply {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #E65100;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 12px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn-apply:hover {
            background-color: #FFB74D;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="job-container">
        <div class="job-details">
            <div class="job-header">
                <asp:Image ID="imgCompanyLogo" runat="server" CssClass="job-image" />
                <div class="job-header-content">
                    <h2><asp:Label ID="lblJobTitle" runat="server"></asp:Label></h2>
                    <p><strong><asp:Label ID="lblCompany" runat="server"></asp:Label></strong></p>
                    <p><asp:Label ID="lblLocation" runat="server"></asp:Label></p>
                    <p><strong>Salary:</strong> <asp:Label ID="lblSalary" runat="server"></asp:Label></p>
                </div>
            </div>
            <h3>Job Description</h3>
            <p><asp:Label ID="lblJobDescription" runat="server"></asp:Label></p>
            <h3>Required Skills</h3>
            <p><asp:Label ID="lblRequiredSkills" runat="server"></asp:Label></p>
            <h3>Education + Experience</h3>
            <p><asp:Label ID="lblEducationExperience" runat="server"></asp:Label></p>
        </div>
        <div class="job-summary">
            <h3>Job Overview</h3>
            <p><strong>Posted date:</strong> <asp:Label ID="lblPostingDate" runat="server"></asp:Label></p>
            <p><strong>Vacancies:</strong> <asp:Label ID="lblVacancies" runat="server"></asp:Label></p>
            <p><strong>Job nature:</strong> <asp:Label ID="lblEmploymentType" runat="server"></asp:Label></p>
            <p><strong>Application Deadline:</strong> <asp:Label ID="lblApplicationDeadline" runat="server"></asp:Label></p>
            <h3>Company Information</h3>
            <p><strong>Website:</strong> <a href="#" id="companyWebsiteLink" runat="server" target="_blank"><asp:Label ID="lblCompanyWebsite" runat="server"></asp:Label></a></p>
            <p><strong>Email:</strong> <asp:Label ID="lblCompanyEmail" runat="server"></asp:Label></p>
            <a href="apply.aspx" class="btn-apply">Apply Now</a>
        </div>
    </div>
</asp:Content>
