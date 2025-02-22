<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Managejob.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
       <style>
            body {
                background-color: #F5E3C3;
                font-family: 'Poppins', sans-serif;
            }
            .manage-jobs-container {
                padding: 40px;
                max-width: 1100px;
                margin: auto;
                background: #ffffff;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
                margin-top: 5rem;
                background-color: #1E3A5F;
            }
            .page-title {
                font-size: 28px;
                font-weight: 600;
                text-align: center;
                margin-bottom: 25px;
                color: whitesmoke;
            }
            .search-filter-container {
                display: flex;
                gap: 15px;
                align-items: center;
                justify-content: center;
                margin-bottom: 20px;
            }
            .search-input, .filter-dropdown {
                padding: 10px;
                width: 250px;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 16px;
            }
            .filter-btn {
                padding: 10px 20px;
                background: linear-gradient(135deg, #2a4d7d, #4f7ebc);
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s ease-in-out;
            }
            .filter-btn:hover {
                background: linear-gradient(135deg, #4f7ebc, #81aef2);
                transform: scale(1.05);
            }
            .table {
                width: 100%;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .table th, .table td {
                padding: 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            .status {
                padding: 6px 12px;
                border-radius: 20px;
                font-size: 14px;
                font-weight: 600;
            }
            .status.active {
                background: #28a745;
                color: white;
            }
            .status.closed {
                background: #dc3545;
                color: white;
            }
            .status.expire{
                background-color: #6c757d;
                color: #ffffff;
            }
            .btn {
                padding: 8px 14px;
                border: none;
                border-radius: 5px;
                font-size: 14px;
                cursor: pointer;
                transition: all 0.3s;
            }
            .btn-edit {
                background: #ffc107;
                color: #333;
            }
            .btn-edit:hover {
                background: #e0a800;
            }
            .btn-delete {
                background: #dc3545;
                color: white;
            }
            .btn-delete:hover {
                background: #c82333;
            }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="manage-jobs-container">
        <h1 class="page-title">Manage Job Postings</h1>
        
        <!-- Search & Filters Section -->
        <div class="search-filter-container">
            <input type="text" id="searchJob" class="search-input" placeholder="Search by job title...">
            <select id="filterStatus" class="filter-dropdown">
                <option value="">All Statuses</option>
                <option value="Active">Active</option>
                <option value="Closed">Closed</option>
                <option value="Expired">Expired</option>
            </select>
            <button class="btn btn-primary filter-btn" onclick="filterJobs()">Apply Filters</button>
        </div>
        
        <!-- Job Listings Table -->
        <div class="job-listing-table">
            <table class="table">
                <thead>
                    <tr>
                        <th>Job Title</th>
                        <th>Status</th>
                        <th>Date Posted</th>
                        <th>Applicants</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Software Engineer</td>
                        <td><span class="status active">Active</span></td>
                        <td>Feb 10, 2025</td>
                        <td><a href="JobApplications.aspx">12 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Marketing Manager</td>
                        <td><span class="status closed">Closed</span></td>
                        <td>Jan 15, 2025</td>
                        <td><a href="JobApplications.aspx">8 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>UI/UX Designer</td>
                        <td><span class="status active">Active</span></td>
                        <td>Feb 5, 2025</td>
                        <td><a href="JobApplications.aspx">15 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Data Analyst</td>
                        <td><span class="status active">Active</span></td>
                        <td>Jan 28, 2025</td>
                        <td><a href="JobApplications.aspx">10 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>HR Manager</td>
                        <td><span class="status closed">Closed</span></td>
                        <td>Jan 20, 2025</td>
                        <td><a href="JobApplications.aspx">7 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Content Writer</td>
                        <td><span class="status expire">Expired</span></td>
                        <td>Dec 10, 2025</td>
                        <td><a href="JobApplications.aspx">5 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>DevOps Engineer</td>
                        <td><span class="status active">Active</span></td>
                        <td>Feb 12, 2025</td>
                        <td><a href="JobApplications.aspx">18 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Digital Marketing Specialist</td>
                        <td><span class="status active">Active</span></td>
                        <td>Feb 2, 2025</td>
                        <td><a href="JobApplications.aspx">9 Applicants</a></td>
                        <td>
                            <button class="btn btn-edit">Edit</button>
                            <button class="btn btn-delete">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
