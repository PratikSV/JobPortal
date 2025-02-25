<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="JOB_Portal.MainMasterPages.apply" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Submitted</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #F5F5F5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .message-container {
            background: #FFFFFF;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            border: 2px solid #FF9800;
        }
        .message-container h2 {
            color: #FF9800;
            margin-bottom: 20px;
        }
        .message-container p {
            color: #000000;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn-ok {
            padding: 10px 18px;
            background-color: #E65100;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
        }
        .btn-ok:hover {
            background-color: #FF9800;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message-container">
            <h2>Application Submitted</h2>
            <p>Your application has been submitted successfully!</p>
            <asp:Button ID="btnOK" runat="server" Text="OK" CssClass="btn-ok" OnClick="btnOK_Click" />
        </div>
    </form>
</body>
</html>