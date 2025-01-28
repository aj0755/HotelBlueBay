<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset password</title>
    <link href="content/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="content/JScript.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
 <div class="container">
        <div class="reset-password-container">
            <h2 class="animate-title">Reset Your Password</h2>
            <p class="tagline">Enter a new password below to reset your password.</p>

            <asp:Panel ID="ResetPasswordPanel" runat="server" CssClass="password-form">
                <!-- New Password -->
                <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="input-box" Placeholder="Enter your new password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required!" CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Password must be at least 8 characters with letters and numbers." CssClass="error-message" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <!-- Confirm New Password -->
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-box" Placeholder="Confirm your new password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required!" CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match!" CssClass="error-message" ForeColor="Red"></asp:CompareValidator>
                <br />

                <!-- Reset Password Button -->
                <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="btn-submit"/>
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text=""></asp:Label>
            </asp:Panel>

            <!-- Back to Login Link -->
            <div class="back-to-login">
                <a href="Login.aspx" class="back-link">Back to Login</a>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
