<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Findajob.aspx.cs" Inherits="JOB_Portal.MainMasterPages.Findajob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .layout-container {
            display: flex;
            margin-top: 120px;
        }

        .filter-panel {
            width: 25%;
            padding: 20px;
            background: #f8f9fa;
            border-right: 1px solid #ddd;
        }

        .filter-panel h4 {
            margin-bottom: 15px;
            color: #333;
            font-size: 20px;
            font-weight: bold;
        }

        .filter-panel label {
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        .filter-panel select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .job-section {
            width: 75%;
            padding: 20px;
        }

        .job-box {
            display: flex;
            align-items: center;
            background: white;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .company-logo {
            width: 50px;
            height: 50px;
            margin-right: 15px;
        }

        .job-info h5 {
            margin: 0;
            color: #333;
            font-size: 18px;
            font-weight: bold;
        }

        .job-info p {
            margin: 5px 0;
            color: #666;
        }

        .employment-type {
            padding: 5px 10px;
            border-radius: 5px;
            border: 1px solid #FF9800;
            color: #FF9800;
            background: white;
            text-align: center;
        }

        .employment-type:hover {
            background: #FF9800;
            color: white;
        }
        /*this class is not applicable*/
        .orang{
            color: #FF9800;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="layout-container">
        <div class="filter-panel">
            <h2 class="orang">Filter Jobs</h2>
            <label>Job Category</label>
            <select>
                <option>All Category</option>
                <option>IT & Software</option>
                <option>Marketing</option>
                <option>Finance</option>
                <option>Healthcare</option>
            </select>
            
            <label>Job Location</label>
            <select>
                <option>Anywhere</option>
                <option>USA</option>
                <option>Canada</option>
                <option>UK</option>
                <option>India</option>
            </select>
            
            <label>Experience</label>
            <select>
                <option>1-2 years</option>
                <option>2-3 years</option>
                <option>3-4 years</option>
                <option>4-5 years</option>
                <option>6+ years</option>
            </select>
            <label>Job Type</label>
                <Label><input type="checkbox"> Full Time</Label>
                <label><input type="checkbox"> Part Time</label>
                <label><input type="checkbox"> Remote</label>
                <label><input type="checkbox"> Freelance</label>
        </div>
        
        <div class="job-section">
            <div class="job-box">
                <img src="images/logo1.png" class="company-logo" alt="Company Logo">
                <div class="job-info">
                    <h3 class ="orang">Digital Marketer</h3>
                    <p>Creative Agency - Athens, Greece</p>
                    <p>$3500 - $4000</p>
                    <asp:Button ID="CreativeAgency" runat="server" CssClass="employment-type" Text="Full Time" />
                </div>
            </div>
            <div class="job-box">
                <img src="images/logo2.png" class="company-logo" alt="Company Logo">
                <div class="job-info">
                    <h3 class ="orang">Software Developer</h3>
                    <p>Tech Company - New York, USA</p>
                    <p>$5000 - $6000</p>
                    <asp:Button ID="TechCompany" runat="server" CssClass="employment-type" Text="Remote" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
