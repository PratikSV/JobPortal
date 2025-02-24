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
            background-color: #FFB74D;
            border-radius: 10px;
        }
        .job-header-content {
            display: flex;
            flex-direction: column;
        }
        .job-details {
            width: 60%;
            margin-top: 20px;
            padding: 15px;
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
        .job-summary h3 {
            text-align: center;
            padding-bottom: 8px;
            font-size: 1.5rem;
            font-weight: bold;
            color: #E65100;
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
        h2, h3, p, ul, li {
            font-family: 'Poppins', sans-serif;
        }
        h2 {
            color: #E65100;
            font-size: 2rem;
            font-weight: bold;
        }
        h3 {
            color: #E65100;
            font-size: 2rem;
            font-weight: bold;
        }
        p, ul, li {
            color: #333333;
            font-size: 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="job-container">
        <div class="job-details">
            <div class="job-header">
                <div class="job-image"></div>
                <div class="job-header-content">
                    <h2>Software Engineer</h2>
                    <p><strong>Google</strong></p>
                    <p>Mountain View, USA</p>
                    <p><strong>Salary:</strong> $100,000 - $120,000</p>
                </div>
            </div>
            <h3>Job Description</h3>
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            <h3>Required Knowledge, Skills, and Abilities</h3>
            <ul>
                <li>System Software Development</li>
                <li>Mobile Application in iOS/Android/Tizen or other platform</li>
                <li>Research and code, libraries, APIs and frameworks</li>
                <li>Strong knowledge on software development life cycle</li>
                <li>Strong problem-solving and debugging skills</li>
            </ul>
            <h3>Education + Experience</h3>
            <ul>
                <li>3 or more years of professional design experience</li>
                <li>Direct response email experience</li>
                <li>Ecommerce website design experience</li>
                <li>Familiarity with mobile and web apps preferred</li>
                <li>Experience using Invision a plus</li>
            </ul>
        </div>
        <div class="job-summary">
            <h3>Job Overview</h3>
            <p><strong>Posted date:</strong> 12 Aug 2019</p>
            <p><strong>Location:</strong> New York</p>
            <p><strong>Vacancy:</strong> 02</p>
            <p><strong>Job nature:</strong> Full time</p>
            <p><strong>Salary:</strong> $7,800 yearly</p>
            <p><strong>Application date:</strong> 12 Sep 2020</p>
            <h3>Company Information</h3>
            <p><strong>Company:</strong> Colorlib</p>
            <p><strong>Web:</strong> colorlib.com</p>
            <p><strong>Email:</strong> carrier.colorlib@gmail.com</p>
            <a href="apply.aspx" class="btn-apply">Apply Now</a>
        </div>
    </div>
</asp:Content>
