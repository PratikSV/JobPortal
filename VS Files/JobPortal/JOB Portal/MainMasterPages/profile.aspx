<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="profile-edit.aspx.cs" Inherits="JOB_Portal.MainMasterPages.ProfileEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <style>
        body {
            background-color: #F5E3C3;
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        .edit-form-container {
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            margin-top: 7rem;
        }

        .section-title {
            color: #1E3A5F;
            border-bottom: 2px solid #1E3A5F;
            padding-bottom: 10px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .profile-image-container {
            text-align: center;
            margin-bottom: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
        }

        .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 3px solid #1E3A5F;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: 500;
            color: #1E3A5F;
            margin-bottom: 8px;
        }

        .form-control {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
            transition: border-color 0.3s ease;
        }

        .form-control:focus {
            border-color: #1E3A5F;
            box-shadow: 0 0 0 0.2rem rgba(30, 58, 95, 0.25);
        }

        .text-danger {
            font-size: 0.875rem;
            margin-top: 5px;
        }

        .action-buttons {
            display: flex;
            gap: 15px;
            justify-content: flex-end;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #dee2e6;
        }

        .btn {
            padding: 10px 25px;
            font-weight: 500;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn-save {
            background: linear-gradient(135deg, #D97706, #C89F57);
            color: white;
            border: none;
        }

        .btn-save:hover {
            background: linear-gradient(135deg, #B65E04, #A07844);
            transform: translateY(-2px);
        }

        .btn-cancel {
            background-color: #6c757d;
            color: white;
            border: none;
        }

        .btn-cancel:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
        }

        .custom-file-upload {
            display: inline-block;
            padding: 10px 20px;
            cursor: pointer;
            background: #1E3A5F;
            color: white;
            border-radius: 5px;
            margin-top: 10px;
            transition: all 0.3s ease;
        }

        .custom-file-upload:hover {
            background: #152c47;
        }

        .form-section {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 25px;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .edit-form-container {
                margin: 20px;
                padding: 20px;
            }

            .action-buttons {
                flex-direction: column;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="edit-form-container">
        <h2 class="section-title text-center mb-4">Edit Your Profile</h2>

        <!-- Profile Image Section -->
        <div class="profile-image-container">
            <asp:Image ID="imgProfile" runat="server" CssClass="profile-image" AlternateText="Profile Picture" />
            <div class="mt-3">
                <label class="custom-file-upload">
                    <i class="fas fa-camera me-2"></i>Change Profile Picture
                    <asp:FileUpload ID="fileProfilePic" runat="server" CssClass="d-none" />
                </label>
            </div>
        </div>

        <!-- Personal Information Section -->
        <div class="form-section">
            <h3 class="section-title">Personal Information</h3>
            
            <div class="form-group">
                <label for="txtFullName" class="form-label">Full Name</label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your full name" />
                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" 
                    ControlToValidate="txtFullName" 
                    ErrorMessage="Name is required" 
                    CssClass="text-danger" 
                    Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtEmail" class="form-label">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required" 
                    CssClass="text-danger" 
                    Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="text-danger" 
                    Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtPhone" class="form-label">Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number" />
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Phone number is required" 
                    CssClass="text-danger" 
                    Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtAddress" class="form-label">Address</label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" 
                    TextMode="MultiLine" Rows="3" placeholder="Enter your address" />
            </div>
        </div>

        <!-- Professional Information Section -->
        <div class="form-section">
            <h3 class="section-title">Professional Information</h3>

            <div class="form-group">
                <label for="txtAbout" class="form-label">About Me</label>
                <asp:TextBox ID="txtAbout" runat="server" CssClass="form-control" 
                    TextMode="MultiLine" Rows="4" 
                    placeholder="Write a brief introduction about yourself" />
            </div>

            <div class="form-group">
                <label for="txtExperience" class="form-label">Work Experience</label>
                <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" 
                    TextMode="MultiLine" Rows="4" 
                    placeholder="Describe your work experience" />
            </div>

            <div class="form-group">
                <label for="txtEducation" class="form-label">Education</label>
                <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" 
                    TextMode="MultiLine" Rows="4" 
                    placeholder="List your educational qualifications" />
            </div>

            <div class="form-group">
                <label for="txtSkills" class="form-label">Skills</label>
                <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" 
                    placeholder="Enter your skills (comma separated)" />
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                CssClass="btn btn-cancel" 
                OnClick="btnCancel_Click" 
                CausesValidation="false" />
            <asp:Button ID="btnSave" runat="server" Text="Save Changes" 
                CssClass="btn btn-save" 
                OnClick="btnSave_Click" />
        </div>
    </div>

    <!-- Script for file upload preview -->
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= fileProfilePic.ClientID %>").change(function () {
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#<%= imgProfile.ClientID %>").attr('src', e.target.result);
                    }
                    reader.readAsDataURL(this.files[0]);
                }
            });

            $(".custom-file-upload").click(function () {
                $("#<%= fileProfilePic.ClientID %>").click();
            });
        });
    </script>
</asp:Content>