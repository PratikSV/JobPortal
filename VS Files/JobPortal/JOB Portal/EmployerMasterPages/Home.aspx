﻿<%@ Page Title="" Language="C#" MasterPageFile="~/EmployerMasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JOB_Portal.EmployerMasterPages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            text-align: center;
            font-family: 'Poppins', sans-serif;
            color: #1A1A1A;
            background-color: #F5E3C3;
        }

        .intro {
            padding: 6rem 0;
            min-height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background-color: #1E3A5F;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            margin: 5rem 0;
        }

        .intro h1 {
            color: whitesmoke;
        }

        .intro p {
            color: white;
            font-size: 1rem;
        }

        .flex {
            display: flex;
            justify-content: space-evenly;
            gap: 3rem
        }

        .cards {
            border: 1px solid transparent;
            background-color: #141e30;   
            border-radius: 10px;
            padding: 3rem;
        }

        .cards span {
            font-size: 2.5rem;
            color: #ffffff;
            font-weight: 700;
        }

        .cards p {
            font-size: 1.5rem;
        }

        .cards #p1 {
            color: #6c5ce7;
        }

        .cards #p2 {
            color: #0984e3;
        }

        .cards #p3 {
            color: #00b894;
        }


    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="intro">
        <div class="container">
            <h1>Welcome Back, Recruiters</h1>
            <p>Empower your hiring journey with ease and efficiency. Dicover top talent, manage your job postings, and connect with the right candidates seamlessly. Let's build your dream team together - because the perfect hire is just a few links away.</p>
        </div>
    </section>

    <section>
        <div class="intro">
        <h1>Site Overview</h1>
            <div class="flex">
                <div class="cards"><p id="p1"><span>4m</span><br /> Current users</p></div>
                <div class="cards"><p id="p2"><span>500k</span><br /> Jobs posted</p></div>
                <div class="cards"><p id="p3"><span>200k</span><br /> Active users</p></div>
            </div>
        </div>
    </section>
</asp:Content>
