<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPages/Main_Master_page.Master"
    AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JOB_Portal.MainMasterPages.WebForm1"
    Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #FFF3E0; 
            color: #1A1A1A;
        }

        .contact {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin: 125px auto;
            width: 90%;
            max-width: 1000px;
        }

        .contact h2 {
            color: #F39C12;
            text-shadow: 1px 1px 3px rgba(230, 126, 34, 0.3);
            font-weight: 500;
            margin-bottom: 1rem;
        }

        .contact .left-contact p {
            color: black;
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
            background-color: #F9E8D2; 
            color: #333333;
        }

        .input-field:focus {
            border-color: #C89F57; 
            outline: none;
            background-color: #ffe0b3; 
        }

        .submit {
            background: #FF9800;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: all 0.3s ease-in-out;
        }

        .submit:hover {
            background: #E65100; 
            transform: scale(1.05);
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
        .custom-footer {
    background-color: #333333; 
    color: white; 
    text-align: center;
    padding: 20px 0;
    margin-top: 50px; 
    margin-bottom:0px;
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
            
            <asp:Button ID="btnSubmit" runat="server" CssClass="submit" Text="Submit" OnClick="btnSubmit_Click" />
            
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>
        </div>
    </section>
</asp:Content>
