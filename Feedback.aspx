<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="feedback-container">
        <!-- Page Title -->
        <h2>We Value Your Feedback</h2>
        <p>Your feedback helps us improve. Please take a moment to share your experience with us.</p>

        <!-- Feedback Form -->
        <div class="feedback-form">
            <asp:Label ID="lblRating" runat="server" Text="Rate your stay:" CssClass="form-label"></asp:Label>

            <!-- Star Rating -->
            <div class="rating">
                <asp:RadioButtonList ID="rblRating" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="⭐" Value="1" />
                    <asp:ListItem Text="⭐⭐" Value="2" />
                    <asp:ListItem Text="⭐⭐⭐" Value="3" />
                    <asp:ListItem Text="⭐⭐⭐⭐" Value="4" />
                    <asp:ListItem Text="⭐⭐⭐⭐⭐" Value="5" />
                </asp:RadioButtonList>
            </div>

            <asp:Label ID="lblCleanliness" runat="server" Text="Cleanliness:" CssClass="form-label"></asp:Label>
            <asp:RadioButtonList ID="rblCleanliness" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="⭐" Value="1" />
                <asp:ListItem Text="⭐⭐" Value="2" />
                <asp:ListItem Text="⭐⭐⭐" Value="3" />
                <asp:ListItem Text="⭐⭐⭐⭐" Value="4" />
                <asp:ListItem Text="⭐⭐⭐⭐⭐" Value="5" />
            </asp:RadioButtonList>

            <asp:Label ID="lblService" runat="server" Text="Service:" CssClass="form-label"></asp:Label>
            <asp:RadioButtonList ID="rblService" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="⭐" Value="1" />
                <asp:ListItem Text="⭐⭐" Value="2" />
                <asp:ListItem Text="⭐⭐⭐" Value="3" />
                <asp:ListItem Text="⭐⭐⭐⭐" Value="4" />
                <asp:ListItem Text="⭐⭐⭐⭐⭐" Value="5" />
            </asp:RadioButtonList>

            <asp:Label ID="lblComments" runat="server" Text="Additional Comments:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" CssClass="input-text" Rows="4" Placeholder="Your feedback..." />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" CssClass="btn-submit" />
        </div>

        <!-- Confirmation Message -->
        <div id="confirmationMessage" runat="server" class="confirmation-message" style="display:none;">
            <p>Thank you for your feedback!</p>
        </div>
    </div>
</asp:Content>

