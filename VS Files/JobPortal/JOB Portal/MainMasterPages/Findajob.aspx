<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Findajob.aspx.cs" Inherits="JOB_Portal.MainMasterPages.Findajob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #FFF3E0;
            color: #333333;
        }

        .layout-container {
            display: flex;
            margin-top: 120px;
        }

        /* Left Filter Panel */
        .filter-panel {
            width: 25%;
            padding: 20px;
            background: #F5F5F5;
            border-right: 1px solid #ddd;
<<<<<<< HEAD
            height: 100vh;
            position: sticky;
            top: 120px;
=======
            border-radius: 5px;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
        }

        .filter-panel h4 {
            margin-bottom: 15px;
            color: #333333;
            font-size: 20px;
            font-weight: bold;
        }

        .filter-panel label {
            display: block;
<<<<<<< HEAD
            margin: 10px 0;
            color: #333;
=======
            margin-bottom: 10px;
            color: #333333;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
            font-weight: 500;
        }

        .filter-panel select,
<<<<<<< HEAD
        .filter-panel .dropdown {
=======
        .filter-panel input[type="checkbox"] {
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #FF9800;
            border-radius: 5px;
<<<<<<< HEAD
            background-color: white;
        }

        .filter-panel .checkbox-group {
            margin: 5px 0;
        }

        .filter-panel .checkbox-group label {
            display: flex;
            align-items: center;
            margin: 8px 0;
            cursor: pointer;
        }

        .filter-panel .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
=======
            background: #FFFFFF;
            color: #333333;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
        }

        /* Job Listings Section */
        .job-section {
            width: 75%;
            padding: 20px;
        }

        /* Job Listing Box */
        .job-box {
            display: flex;
            align-items: center;
<<<<<<< HEAD
            background-color: #1E3A5F;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
=======
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            border: 2px solid black;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease;
        }

        .job-box:hover {
            transform: translateY(-5px);
        }

        .company-logo {
            width: 80px;
            height: 80px;
            margin-right: 20px;
            border-radius: 8px;
            object-fit: cover;
        }

        .job-info {
            flex-grow: 1;
        }

        .job-info h3 {
            margin: 0;
<<<<<<< HEAD
            color: #FF9800;
            font-size: 22px;
=======
            color: #333333;
            font-size: 18px;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
            font-weight: bold;
            margin-bottom: 8px;
        }

        .job-info p {
            margin: 5px 0;
<<<<<<< HEAD
            color: white;
            font-size: 16px;
=======
            color: #333333;
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
        }

        /* Headings */
        .head {
            color: #FF9800;
            font-weight: bold;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Buttons */
        .employment-type {
            padding: 8px 15px;
            border-radius: 5px;
            border: 1px solid #FF9800;
            color: white;
            background: linear-gradient(135deg, #FF9800, #E65100);
            transition: all 0.3s ease-in-out;
            text-align: center;
            margin-top: 10px;
            cursor: pointer;
            font-weight: 500;
        }

        .employment-type:hover {
            background: linear-gradient(135deg, #E65100, #B65E04);
            transform: scale(1.05);
        }

<<<<<<< HEAD
        .no-jobs-message {
            text-align: center;
            padding: 40px;
            color: #666;
            font-size: 18px;
            background-color: #fff;
            border-radius: 8px;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .layout-container {
                flex-direction: column;
            }

            .filter-panel {
                width: 100%;
                height: auto;
                position: static;
                margin-bottom: 20px;
            }

            .job-section {
                width: 100%;
            }
        }

        @media (max-width: 576px) {
            .job-box {
                flex-direction: column;
                text-align: center;
            }

            .company-logo {
                margin: 0 0 15px 0;
            }

            .job-info h3 {
                font-size: 20px;
            }
=======
        .orang {
            color: #D35400;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(211, 84, 0, 0.3);
>>>>>>> 3d42624892c2ba6844ef8e5d4ba6754c44a3dff3
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="layout-container">
        <div class="filter-panel">
            <h2 class="head">Filter Jobs</h2>
            
            <label for="ddlCategory">Job Category</label>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="dropdown" 
                AutoPostBack="true" OnSelectedIndexChanged="btnFilter_Click">
            </asp:DropDownList>
            
            <label for="ddlLocation">Job Location</label>
            <asp:DropDownList ID="ddlLocation" runat="server" CssClass="dropdown"
                AutoPostBack="true" OnSelectedIndexChanged="btnFilter_Click">
            </asp:DropDownList>
            
                 <label for="ddlExperience">Experience Level</label>
            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="dropdown"
                AutoPostBack="true" OnSelectedIndexChanged="btnFilter_Click">
            </asp:DropDownList>
            
            <label>Employment Type</label>
            <div class="checkbox-group">
                <label>
                    <asp:CheckBox ID="chkFullTime" runat="server" AutoPostBack="true" 
                        OnCheckedChanged="btnFilter_Click" />
                    Full Time
                </label>
                <label>
                    <asp:CheckBox ID="chkPartTime" runat="server" AutoPostBack="true" 
                        OnCheckedChanged="btnFilter_Click" />
                    Part Time
                </label>
                <label>
                    <asp:CheckBox ID="chkRemote" runat="server" AutoPostBack="true" 
                        OnCheckedChanged="btnFilter_Click" />
                    Remote
                </label>
                <label>
                    <asp:CheckBox ID="chkFreelance" runat="server" AutoPostBack="true" 
                        OnCheckedChanged="btnFilter_Click" />
                    Freelance
                </label>
            </div>
        </div>
        
        <div class="job-section">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Repeater ID="rptJobs" runat="server">
                        <ItemTemplate>
                            <div class="job-box">
                                <img src='<%# Eval("CompanyLogo") %>' class="company-logo" alt="Company Logo" />
                                <div class="job-info">
                                    <h3><%# Eval("JobTitle") %></h3>
                                    <p><%# Eval("Company") %> - <%# Eval("Location") %></p>
                                    <p><%# Eval("Salary") %></p>
                                    <asp:Button runat="server" CssClass="employment-type" 
                                        Text='<%# Eval("EmploymentType") %>' />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <asp:Panel ID="NoJobsPanel" runat="server" CssClass="no-jobs-message" Visible="false">
                        <h3>No jobs found matching your criteria</h3>
                        <p>Try adjusting your filters to see more results</p>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
