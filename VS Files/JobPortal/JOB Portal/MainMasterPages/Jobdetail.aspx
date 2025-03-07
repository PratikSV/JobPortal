<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Jobdetail.aspx.cs" Inherits="JOB_Portal.MainMasterPages.Jobdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #F5F5F5;
        }
        .job-container {
            margin: 100px auto 20px auto;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            background-color: #FFFFFF;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: flex-start;
            color: #000000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
            background-color: white;
            border: 1px solid #FF9800;
        }
        .job-header-content {
            display: flex;
            flex-direction: column;
        }
        .job-summary {
            width: 25%;
            background: #FFFFFF;
            padding: 15px;
            border: 2px solid #FF9800;
            border-radius: 10px;
            text-align: left;
            font-size: 14px;
            color: #000000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-apply {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 18px;
            background-color: #E65100;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
        }
        .btn-apply:hover {
            background-color: #FF9800;
        }
        .orange {
            color: #FF9800;
            margin-top: 40px;
            font-weight: bold;
        }
        .job-summary h3 {
            font-size: 20px;
            margin: 10px auto;
        }
         
 .custom-footer {
     background-color: #333333;
     color: white; 
     text-align: center;
     padding: 20px 0;
     margin-top: 50px; 
     margin-bottom: 0px;
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
    <div class="job-container">
        <div class="job-details">
            <div class="job-header">
                <asp:Image ID="imgCompanyLogo" runat="server" CssClass="job-image" />
                <div class="job-header-content">
                    <h2><asp:Label ID="lblJobTitle" runat="server" CssClass="orange"></asp:Label></h2>
                    <p><strong><asp:Label ID="lblCompany" runat="server"></asp:Label></strong></p>
                    <p><asp:Label ID="lblLocation" runat="server"></asp:Label></p>
                    <p><strong>Salary:</strong> <asp:Label ID="lblSalary" runat="server"></asp:Label></p>
                </div>
            </div>
            <h3 class="orange">Job Description</h3>
            <p><asp:Label ID="lblJobDescription" runat="server"></asp:Label></p>
            <h3 class="orange">Required Skills</h3>
            <p><asp:Label ID="lblRequiredSkills" runat="server"></asp:Label></p>
            <h3 class="orange">Education + Experience</h3>
            <p><asp:Label ID="lblEducationExperience" runat="server"></asp:Label></p>
        </div>
        <div class="job-summary">
            <h3 class="orange">Job Overview</h3>
            <p><strong>Posted date:</strong> <asp:Label ID="lblPostingDate" runat="server"></asp:Label></p>
            <p><strong>Vacancies:</strong> <asp:Label ID="lblVacancies" runat="server"></asp:Label></p>
            <p><strong>Job nature:</strong> <asp:Label ID="lblEmploymentType" runat="server"></asp:Label></p>
            <p><strong>Application Deadline:</strong> <asp:Label ID="lblApplicationDeadline" runat="server"></asp:Label></p>
            <h3 class="orange">Company Information</h3>
            <p><strong>Website:</strong> <a href="#" id="companyWebsiteLink" runat="server" target="_blank"><asp:Label ID="lblCompanyWebsite" runat="server"></asp:Label></a></p>
            <p><strong>Email:</strong> <asp:Label ID="lblCompanyEmail" runat="server"></asp:Label></p>
            <a href="apply.aspx" class="btn-apply">Apply Now</a>
        </div>
    </div>
</asp:Content>
