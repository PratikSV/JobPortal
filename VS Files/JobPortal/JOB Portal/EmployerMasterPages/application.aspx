<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="application.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    body {
        background-color: #F5E3C3;
        font-family: 'Poppins', sans-serif;
    }
    .applications-container {
        max-width: 1000px;
        margin: auto;
        padding: 40px;
        background: #1E3A5F;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .page-title {
        text-align: center;
        font-size: 28px;
        font-weight: 600;
        margin-bottom: 20px;
        color: whitesmoke;
    }
    .applications-table table {
        width: 100%;
        border-collapse: collapse;
        background: #ffffff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .applications-table th, .applications-table td {
        padding: 12px 15px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }
    .applications-table th {
        background: #3b587e;
        color: white;
        font-weight: 600;
    }
    .applications-table tbody tr:hover {
        background: #ffeee0;
    }
    .status {
        padding: 6px 12px;
        border-radius: 20px;
        font-size: 14px;
        font-weight: 600;
        display: inline-block;
    }
    .status.pending {
        background: #ffcc80;
        color: #7a4100;
    }
    .status.shortlisted {
        background: #8bc34a;
        color: white;
    }
    .status.reviewed {
        background: #4caf50;
        color: white;
    }
    .status.rejected {
        background: #e53935;
        color: white;
    }
    .btn {
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: all 0.3s;
    }
    .btn.review {
        background: #007bff;
        color: white;
    }
    .btn.review:hover {
        background: #0056b3;
    }
    .btn.shortlist {
        background: #28a745;
        color: white;
    }
    .btn.shortlist:hover {
        background: #218838;
    }
    .btn.reject {
        background: #dc3545;
        color: white;
    }
    .btn.reject:hover {
        background: #c82333;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="applications-container">
        <h2 class="page-title">Job Applications</h2>
        
        <div class="applications-table">
            <table>
                <thead>
                    <tr>
                        <th>Applicant Name</th>
                        <th>Job Title</th>
                        <th>Resume</th>
                        <th>Application Date</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td>Software Engineer</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-10</td>
                        <td><span class="status shortlisted">Shortlisted</span></td>
                        <td>
                            <button class="btn review">Review</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Alice Smith</td>
                        <td>UI/UX Designer</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-12</td>
                        <td><span class="status reviewed">Reviewed</span></td>
                        <td>
                            <button class="btn shortlist">Shortlist</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Mark Johnson</td>
                        <td>Data Analyst</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-13</td>
                        <td><span class="status rejected">Rejected</span></td>
                        <td>
                            <button class="btn review">Review</button>
                            <button class="btn shortlist">Shortlist</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Emily Davis</td>
                        <td>Backend Developer</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-15</td>
                        <td><span class="status pending">Pending</span></td>
                        <td>
                            <button class="btn review">Review</button>
                            <button class="btn shortlist">Shortlist</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Michael Brown</td>
                        <td>Frontend Developer</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-17</td>
                        <td><span class="status shortlisted">Shortlisted</span></td>
                        <td>
                            <button class="btn review">Review</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Sophia Wilson</td>
                        <td>Project Manager</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-18</td>
                        <td><span class="status reviewed">Reviewed</span></td>
                        <td>
                            <button class="btn shortlist">Shortlist</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Daniel Lee</td>
                        <td>QA Tester</td>
                        <td><a href="#">View Resume</a></td>
                        <td>2025-02-19</td>
                        <td><span class="status pending">Pending</span></td>
                        <td>
                            <button class="btn review">Review</button>
                            <button class="btn shortlist">Shortlist</button>
                            <button class="btn reject">Reject</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
