<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rooms.aspx.cs" Inherits="Rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Title -->
    <h1>Our Luxurious Rooms</h1>

    <!-- Room Overview -->
    <section class="rooms-overview">
        <div class="rooms-intro-text">
            <h2>Choose the Perfect Room for Your Stay</h2>
            <p>We offer a variety of luxurious rooms with stunning views, each designed for your comfort and relaxation. Explore our options below and book your stay today!</p>
        </div>
    </section>

    <!-- Room List -->
    <section class="rooms-list">
        <!-- Deluxe Room -->
        <div class="room-item">
            <img src="Images/DeluxeRoom.jpg" alt="Deluxe Room" />
            <h3>Deluxe Room</h3>
            <p>Enjoy spacious comfort with city views, king-sized bed, and a luxurious bathroom and balcony.</p>
            <p class="price">Rs.3500 per night</p>
            <asp:Button ID="btnDeluxeRoom" runat="server" Text="View Details" 
                CssClass="cta-button" onclick="btnDeluxeRoom_Click"  />
        </div>

        <!-- Executive Suite -->
        <div class="room-item">
            <img src="Images/ExecutiveRoom.jpg" alt="Executive Suite" />
            <h3>Executive Suite</h3>
            <p>This suite features a private balcony, living area, and top-notch amenities for ultimate relaxation.</p>
            <p class="price">Rs.2500 per night</p>
            <asp:Button ID="btnExecutiveRoom" runat="server" Text="View Details" 
                CssClass="cta-button" onclick="btnExecutiveRoom_Click" />
        </div>

        <!-- Presidential Suite -->
        <div class="room-item">
        <img src="Images/PresidentalRoom.jpg"  alt="Presidential Suite" />
            <h3>Presidential Suite</h3>
            <p>Our most luxurious room with a private pool, panoramic city views, and a dedicated concierge.</p>
            <p class="price">Rs.5000 per night</p>
            <asp:Button ID="btnPresidentialSuite" runat="server" Text="View Details" 
                CssClass="cta-button" onclick="btnPresidentialSuite_Click"  />
        </div>
    </section>

    <!-- Availability Section -->
    <section class="room-availability">
        <h2>Check Room Availability</h2>
        <div>
            <label for="txtCheckIn">Check-In Date:</label>
            <asp:TextBox ID="txtCheckIn" runat="server" CssClass="input-control" TextMode="Date" />
        </div>
        <div>
            <label for="txtCheckOut">Check-Out Date:</label>
            <asp:TextBox ID="txtCheckOut" runat="server" CssClass="input-control" TextMode="Date" />
        </div>
        <div>
            <asp:Button ID="btnCheckAvailability" runat="server" Text="Check Availability" CssClass="cta-button"  />
        </div>

        <div class="availability-message">
            <asp:Label ID="lblAvailabilityMessage" runat="server" ForeColor="Green" Visible="false" />
        </div>
    </section>

</asp:Content>

