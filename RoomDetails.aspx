<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomDetails.aspx.cs" Inherits="RoomDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Room Detail Section -->
    <div class="room-details-container">
        <!-- Room Title -->
        <asp:Label ID="lblRoomTitle" runat="server" Text="Luxury Ocean View Suite" CssClass="room-title" />

        <!-- Room Description -->
        <asp:Label ID="lblRoomDescription" runat="server" Text="Enjoy the stunning ocean view from this spacious and luxurious suite." CssClass="room-description" />

        <!-- Image Gallery -->
        <div class="room-gallery">
            <img src="Images/room1.jpg" alt="Luxury Ocean View Suite" class="room-main-image" />
            <div class="room-thumbnails">
                <img src="Images/room1-thumbnail1.jpg" alt="Room Thumbnail 1" class="room-thumbnail" />
                <img src="Images/room1-thumbnail2.jpg" alt="Room Thumbnail 2" class="room-thumbnail" />
            </div>
        </div>

        <!-- Room Features -->
        <div class="room-features">
            <asp:Label ID="lblRoomFeaturesTitle" runat="server" Text="Room Features" CssClass="input-label" />
            <ul>
                <li><asp:Label ID="lblBedType" runat="server" Text="King-size bed" CssClass="room-feature" /></li>
                <li><asp:Label ID="lblWifi" runat="server" Text="Free Wi-Fi" CssClass="room-feature" /></li>
                <li><asp:Label ID="lblView" runat="server" Text="Ocean view" CssClass="room-feature" /></li>
                <li><asp:Label ID="lblRoomSize" runat="server" Text="50 sqm" CssClass="room-feature" /></li>
                <li><asp:Label ID="lblBalcony" runat="server" Text="Private balcony" CssClass="room-feature" /></li>
                <li><asp:Label ID="lblMinibar" runat="server" Text="Minibar & Coffee maker" CssClass="room-feature" /></li>
            </ul>
        </div>

        <!-- Pricing & Booking -->
        <div class="room-booking">
            <asp:Label ID="lblPrice" runat="server" Text="Price: $250 per night" CssClass="room-price" />
            <br />
            <asp:Label ID="lblCheckIn" runat="server" Text="Check-in Date:" CssClass="input-label" />
            <asp:TextBox ID="txtCheckin" runat="server" CssClass="input-field" TextMode="Date" />
            <br />
            <asp:Label ID="lblCheckOut" runat="server" Text="Check-out Date:" CssClass="input-label" />
            <asp:TextBox ID="txtCheckout" runat="server" CssClass="input-field" TextMode="Date" />
            <br />
            <asp:Button ID="btnBookNow" runat="server" Text="Book Now" CssClass="btn-book-now"  />
        </div>

        <!-- Customer Reviews -->
        <div class="room-reviews">
            <asp:Label ID="lblReviewsTitle" runat="server" Text="Customer Reviews" CssClass="reviews-title" />
            <p>4.5/5 based on 200+ reviews</p>
            <div class="review">
                <asp:Label ID="lblReview1" runat="server" Text="The view from this room is absolutely amazing! Highly recommend!" CssClass="review-text" />
                <p><asp:Label ID="lblReviewer1" runat="server" Text="- Sarah L." CssClass="reviewer-name" /></p>
            </div>
            <div class="review">
                <asp:Label ID="lblReview2" runat="server" Text="Best hotel stay ever! Will definitely be back." CssClass="review-text" />
                <p><asp:Label ID="lblReviewer2" runat="server" Text="- Mark T." CssClass="reviewer-name" /></p>
            </div>
        </div>
    </div>
</asp:Content>

