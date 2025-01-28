<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Forget.aspx.cs" Inherits="Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="forgot-password-page">
        <div class="forgot-container">
            <h1 class="animate-title">Forgot Password</h1>
            <asp:Label ID="lblInstructions" runat="server" CssClass="instructions" Text="Enter your registered email address to reset your password."></asp:Label>
            <asp:Panel ID="pnlForgotPassword" runat="server">
                <asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is required" 
                    CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format" CssClass="error-message" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                <br />
                <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" 
                    CssClass="btn-submit" onclick="btnResetPassword_Click"/>
            </asp:Panel>
            <div class="links">
                <a href="login.aspx">Back to Login</a>
            </div>
        </div>
    </div>
</asp:Content>

