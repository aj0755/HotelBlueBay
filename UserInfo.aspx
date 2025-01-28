<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="user-info-container">
    <div class="profile-header">
      <!-- User Avatar and Name -->
      <div class="avatar-container">
        <img src="user.png" alt="User Avatar" class="user-avatar" />
        <h2 class="user-name">John Doe</h2>
      </div>
      <div class="user-actions">
        <a href="EditProfile.aspx" class="btn">Edit Profile</a>
        <a href="ChangePassword.aspx" class="btn">Change Password</a>
      </div>
    </div>

    <!-- Account Information Section -->
    <div class="account-info">
      <h3>Account Details</h3>
      <div class="info-item">
        <span class="info-label">Full Name:</span>
        <span class="info-value">John Doe</span>
      </div>
      <div class="info-item">
        <span class="info-label">Email Address:</span>
        <span class="info-value">johndoe@example.com</span>
      </div>
      <div class="info-item">
        <span class="info-label">Phone Number:</span>
        <span class="info-value">+1 234 567 890</span>
      </div>
      <div class="info-item">
        <span class="info-label">Address:</span>
        <span class="info-value">123 Main Street, City, Country</span>
      </div>
    </div>

    <!-- Logout Section -->
    <div class="logout-section">
      <a href="Logout.aspx" class="btn btn-logout">Logout</a>
    </div>
  </div>
</asp:Content>

