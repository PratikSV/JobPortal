<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #fff4e6; 
            color: #333;
        }

        .contact {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            padding: 40px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 90%;
            max-width: 1000px;
        }

        .contact h2 {
            color: #ff8c00; 
            margin-bottom: 1rem;
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
            border: 1px solid black; 
            border-radius: 5px;
            background-color: #fff8f1; 
        }

        .input-field:focus {
            border-color: #ff8c00; 
            outline: none;
            background-color: #ffe0b3; 
        }

        .submit {
            background-color: #ff8c00; 
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
        }

        .submit:hover {
            background-color: #e07b00; 
        }

        .submit:active {
            transform: scale(0.98); 
        }

        .contact p {
            color: #333; 
            font-size: 16px;
        }

        .contact-head, .form-head {
            font-weight: 600;
            color: #ff8c00;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>
    <section class="contact">
        <div class="left-contact">
            <h2 class="contact-head">Basic Contact Info</h2>
            <p>Company Name : Dream Jobs</p>
            <p>Email : dream@gmail.com</p>
            <p>Phone : +91 12345 67890</p>
        </div>

        <div class="right-contact">
            <form action="https://api.web3forms.com/submit" method="POST">
            <h2 class="form-head">Contact Form</h2>
                <input type="hidden" name="access_key" value="d3932030-7493-4a24-a78f-3b3d64ea5ba9">

                <asp:TextBox ID="txtName" runat="server" CssClass="input-field" Placeholder="Enter Name"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" Placeholder="Enter Email Address" TextMode="Email"></asp:TextBox>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="input-field" Placeholder="Enter Message" TextMode="MultiLine" Rows="5"></asp:TextBox>
                <asp:Button ID="btnSubmit" runat="server" CssClass="submit" Text="Submit" />
            </form>
        </div>
    </section>
</body>
</asp:Content>
 