<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Postajob.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #fff4e6;
            font-family: 'Poppins', sans-serif;
        }

        #head {
            margin: 5rem;
            text-align: center;
        }

        .card-header {
            color: #333333;
            font-weight: 500;
        }
    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="mb-3" id="head">Post a New Job</h2>

        <!-- Job Details Section -->
        <div class="card mb-4">
            <div class="card-header">Job Details</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">Job Title</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="e.g., Software Engineer" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Job Description</label>
                    <asp:TextBox ID="txtJobDescription" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Describe responsibilities and expectations..." />
                </div>
                <div class="mb-3">
                    <label class="form-label">Job Type</label>
                    <asp:DropDownList ID="ddlJobType" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Full-time" />
                        <asp:ListItem Text="Part-time" />
                        <asp:ListItem Text="Contract" />
                        <asp:ListItem Text="Internship" />
                        <asp:ListItem Text="Temporary" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Experience Level</label>
                    <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Entry-level" />
                        <asp:ListItem Text="Mid-level" />
                        <asp:ListItem Text="Senior-level" />
                        <asp:ListItem Text="Director/Executive" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Skills Required (comma-separated)</label>
                    <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" placeholder="e.g., C#, ASP.NET, Communication" />
                </div>
            </div>
        </div>

        <!-- Job Location Section -->
        <div class="card mb-4">
            <div class="card-header">Job Location</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">Location Type</label><br>
                    <asp:RadioButtonList ID="rblLocationType" runat="server" RepeatDirection="Vertical" CssClass="form-check">
                        <asp:ListItem Text="On-site" />
                        <asp:ListItem Text="Remote" />
                        <asp:ListItem Text="Hybrid" />
                    </asp:RadioButtonList>
                </div>
                <div class="mb-3">
                    <label class="form-label">City</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">State/Province</label>
                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Country</label>
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" />
                </div>
            </div>
        </div>

        <!-- Compensation Details -->
        <div class="card mb-4">
            <div class="card-header">Compensation Details</div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Minimum Salary</label>
                        <asp:TextBox ID="txtMinSalary" runat="server" TextMode="Number" CssClass="form-control" />
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Maximum Salary</label>
                        <asp:TextBox ID="txtMaxSalary" runat="server" TextMode="Number" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Currency</label>
                    <asp:DropDownList ID="ddlCurrency" runat="server" CssClass="form-select">
                        <asp:ListItem Text="USD" />
                        <asp:ListItem Text="EUR" />
                        <asp:ListItem Text="INR" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Salary Type</label>
                    <asp:DropDownList ID="ddlSalaryType" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Per Hour" />
                        <asp:ListItem Text="Per Month" />
                        <asp:ListItem Text="Per Year" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Additional Benefits</label>
                    <asp:TextBox ID="txtBenefits" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="e.g., Health insurance, bonuses, remote stipend..." />
                </div>
            </div>
        </div>

        <!-- Job Preferences & Settings -->
        <div class="card mb-4">
            <div class="card-header">Job Preferences & Settings</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">Application Deadline</label>
                    <asp:TextBox ID="txtDeadline" runat="server" TextMode="Date" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Number of Vacancies</label>
                    <asp:TextBox ID="txtVacancies" runat="server" TextMode="Number" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Application Method</label>
                    <asp:RadioButtonList ID="rblApplicationMethod" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Text="Via Portal" />
                        <asp:ListItem Text="External Link" />
                        <asp:ListItem Text="Email" />
                    </asp:RadioButtonList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Job Visibility</label>
                    <asp:DropDownList ID="ddlVisibility" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Public" />
                        <asp:ListItem Text="Private" />
                    </asp:DropDownList>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="chkRemoteApplicants" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label">Allow Remote Applicants</label>
                </div>
            </div>
        </div>

        <!-- Company Information -->
        <div class="card mb-4">
            <div class="card-header">Company Information</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">Company Name</label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" ReadOnly="true" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Company Logo</label>
                    <asp:FileUpload ID="fuCompanyLogo" runat="server" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Company Industry</label>
                    <asp:DropDownList ID="ddlCompanyIndustry" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Information Technology" />
                        <asp:ListItem Text="Finance" />
                        <asp:ListItem Text="Healthcare" />
                        <asp:ListItem Text="Education" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label class="form-label">Company Description</label>
                    <asp:TextBox ID="txtCompanyDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                </div>
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="mb-3 text-end">
            <asp:Button ID="btnPreview" runat="server" Text="Preview" CssClass="btn btn-secondary me-2" />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger ms-2" CausesValidation="false" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="lblMessage" runat="server" CssClass="alert alert-success d-none" />
    </div>
</asp:Content>