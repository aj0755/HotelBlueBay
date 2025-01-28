﻿<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="login-page">
    <div class="login-container">
        <!-- Title and Tagline -->
        <h1 class="animate-title">Welcome Back</h1>
        <p class="tagline">Log in to explore the best Rooms to stay!</p>
        
        <!-- Login Form -->
        <asp:Panel ID="LoginPanel" runat="server">
            <!-- Email -->
            <asp:Label ID="lblEmail" runat="server" Text="Email or user ID:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Enter your email or User Id"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Email is required!" 
                CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address!" 
                CssClass="error-message" Display="Dynamic" 
                ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />

            <!-- Password -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Password is required!" 
                CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <!-- Login Button -->
            <asp:Button ID="btnLogin" runat="server" CssClass="btn-submit" Text="Login" 
                onclick="btnLogin_Click"/>
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </asp:Panel>
        
        <!-- Links -->
        <div class="links">
            <p>
                <a href="forget.aspx">Forgot Password?</a> | 
                <a href="Registration.aspx">Create Account</a>
            </p>
        </div>
    </div>
</div>
</asp:Content>
