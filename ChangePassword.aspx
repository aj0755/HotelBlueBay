<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="change-password-container">
        <h2 class="page-title">Change Your Password</h2>
        <p class="page-description">Update your password to keep your account secure.</p>

        <asp:Panel ID="ChangePasswordPanel" runat="server" CssClass="password-form">
            <!-- Current Password -->
            <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password" CssClass="input-label"></asp:Label>
            <asp:TextBox ID="txtCurrentPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Enter your current password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCurrentPassword" runat="server" ControlToValidate="txtCurrentPassword" ErrorMessage="Current password is required!" CssClass="error-message" ForeColor="red"></asp:RequiredFieldValidator>
            <br />

            <!-- New Password -->
            <asp:Label ID="lblNewPassword" runat="server" Text="New Password" CssClass="input-label"></asp:Label>
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Enter your new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required!" CssClass="error-message" ForeColor="red"></asp:RequiredFieldValidator>
            <br />

            <!-- Confirm New Password -->
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password" CssClass="input-label"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Confirm your new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required!" CssClass="error-message" ForeColor="red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match!" CssClass="error-message" ForeColor="red"></asp:CompareValidator>
            <br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-button" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="green" Text=""></asp:Label>
        </asp:Panel>
    </div>

</asp:Content>

