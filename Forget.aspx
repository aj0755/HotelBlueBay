<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget.aspx.cs" Inherits="Forget" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget page</title>
    <link href="../content/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="../content/JScript.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
