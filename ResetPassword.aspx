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
    <div class="reset-password-container">
        <h2 class="page-title">Reset Your Password</h2>
        <p class="page-description">Please enter your new password below.</p>

        <!-- Password Reset Form -->
        <asp:Panel ID="ResetPasswordPanel" runat="server" CssClass="reset-password-form">
            <asp:Label ID="lblMessage" runat="server" CssClass="info-message"></asp:Label>

            <!-- New Password -->
            <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" CssClass="input-label"></asp:Label>
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Enter new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required!" CssClass="error-message" ForeColor="red"></asp:RequiredFieldValidator>
            <br />

            <!-- Confirm New Password -->
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password:" CssClass="input-label"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Confirm new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required!" CssClass="error-message" ForeColor="red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match!" CssClass="error-message" ForeColor="red"></asp:CompareValidator>
            <br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Reset Password" CssClass="submit-button" />
            <br />
            <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="green" Text=""></asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
