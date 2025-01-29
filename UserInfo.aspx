<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="user-info-container">
            <div class="profile-header">
                <div class="avatar-container">
                    <img src="Logo/user.png" alt="User Avatar" class="user-avatar" />
                    <h2 class="user-name">
                        <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                    </h2>
                </div>
                <div class="user-actions">
                    <asp:Button ID="btnEditProfile" runat="server" CssClass="btn" Text="Edit Profile" OnClick="btnEditProfile_Click" />
                    <asp:Button ID="btnChangePassword" runat="server" CssClass="btn" Text="Change Password" OnClick="btnChangePassword_Click" />
                </div>
            </div>

            <!-- Account Information -->
            <div class="account-info">
                <h3>Account Details</h3>
                <div class="info-item">
                    <asp:Label ID="Label1" CssClass="info-label" runat="server" Text="User_ID:"></asp:Label>
                    <asp:Label ID="lblUserID" runat="server" CssClass="info-value"></asp:Label>
                </div>
                <div class="info-item">
                    <asp:Label ID="Label2" CssClass="info-label" runat="server" Text="Full Name:"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="info-value" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="info-item">
                    <asp:Label ID="Label3" CssClass="info-label" runat="server" Text="Email Address:"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="info-value" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="info-item">
                    <asp:Label ID="Label4" CssClass="info-label" runat="server" Text="Phone Number:"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="info-value" ReadOnly="true"></asp:TextBox>
                </div>
            </div>

            <!-- Save Button (Initially Hidden) -->
            <div class="save-section">
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-save" Text="Save" OnClick="btnSave_Click" Visible="false" />
            </div>

            <!-- Logout Button -->
            <div class="logout-section">
                <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-logout" Text="Logout" OnClick="btnLogout_Click" />
                <br />
                <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
            </div>
        </div>
</asp:Content>

