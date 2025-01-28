<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container">
        <div class="change-password-container">
            <h2 class="animate-title">Change Your Password</h2>
            <p class="tagline">Update your password securely here!</p>

            <asp:Panel ID="ChangePasswordPanel" runat="server" CssClass="password-form">
                <!-- Current Password -->
                <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="input-box" Placeholder="Enter your current password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvCurrentPassword" runat="server" ControlToValidate="txtCurrentPassword" ErrorMessage="Current password is required!" CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <!-- New Password -->
                <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="input-box" Placeholder="Enter a new password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required!" CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Password must be at least 8 characters with letters and numbers." CssClass="error-message" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <!-- Confirm New Password -->
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-box" Placeholder="Confirm your new password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required!" CssClass="error-message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match!" CssClass="error-message" ForeColor="Red"></asp:CompareValidator>
                <br />

                <!-- Change Password Button -->
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn-submit" />
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text=""></asp:Label>
            </asp:Panel>
        </div>
    </div>

</asp:Content>

