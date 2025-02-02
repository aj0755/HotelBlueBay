<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomDetails.aspx.cs" Inherits="RoomDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="room-details-container">
    <!-- Room Title -->
    <h2 class="room-title">
        <asp:Label ID="lblRoomTitle" runat="server" Text="Luxury Ocean View Suite" />
    </h2>

    <!-- Image Gallery -->
    <div class="room-gallery">
        <asp:Image ID="imgMain" runat="server" CssClass="room-main-image" 
            Height="315px" Width="731px" />
    </div>

    <!-- Room Features -->
    <div class="room-features">
        <h3 class="features-title">Room Features</h3>
        <ul class="feature-list">
            <li><asp:Label ID="lblRoomFeatures" runat="server" /></li>
        </ul>
    </div>

    <!-- Pricing & Booking -->
    <div class="room-booking">
        <h3 class="price-title">Pricing</h3>
        <p class="room-price">
            <asp:Label ID="lblPrice" runat="server" Text="Price: $250 per night" />
        </p>

        <div class="booking-form">
            <label for="txtCheckin" class="input-label">Check-in Date:</label>
            <asp:TextBox ID="txtCheckin" runat="server" CssClass="input-field" TextMode="Date" />

            <label for="txtCheckout" class="input-label">Check-out Date:</label>
            <asp:TextBox ID="txtCheckout" runat="server" CssClass="input-field" TextMode="Date" />

            <!-- Number of Rooms -->
            <label for="ddlNumRooms" class="input-label">Number of Rooms:</label>
            <asp:DropDownList ID="ddlNumRooms" runat="server" CssClass="input-field">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" />
                <asp:ListItem Text="6" Value="6" />
            </asp:DropDownList>

            <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
        </div>

        <!-- Book Now Button -->
        <asp:Button ID="btnBookNow" runat="server" Text="Book Now" 
            CssClass="btn-book-now" onclick="btnBookNow_Click" />
    </div>
</div>
</asp:Content>

