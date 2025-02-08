<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        .contact {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            padding: 40px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact h2 {
            color: #0073e6;
        }

        .left-contact, .right-contact {
            flex: 1;
            padding: 20px;
        }

        .right-contact {
            text-align: center;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .submit {
            background-color: #0073e6;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit:hover {
            background-color: #005bb5;
        }
     
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="contact">
        <div class="left-contact">
            <h2 class="contact-head">Basic Contact Info</h2>
            <p>Company Name : Dream Jobs</p>
            <p>Email : dream@gmail.com</p>
            <p>Phone : +91 12345 67890</p>
        </div>

        <div class="right-contact">
            <h2 class="form-head">Contact Form</h2>

            <asp:TextBox ID="txtName" runat="server" CssClass="input-field" Placeholder="Enter Name"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" Placeholder="Enter Email Address" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="input-field" Placeholder="Enter Message" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" CssClass="submit" Text="Submit" />
        </div>
    </section>
</asp:Content>
