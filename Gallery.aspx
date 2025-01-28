<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Hotel Bluebay Gallery</h1>

    <!-- Gallery Categories -->
    <div class="gallery-filters">
        <button class="filter-btn" onclick="filterGallery('rooms')">Rooms</button>
        <button class="filter-btn" onclick="filterGallery('amenities')">Amenities</button>
        <button class="filter-btn" onclick="filterGallery('dining')">Dining</button>
        <button class="filter-btn" onclick="filterGallery('pool')">Pool</button>
    </div>

    <!-- Gallery Section -->
    <section class="gallery-container">
        <div class="gallery-item rooms">
            <img src="Images/DeluxeRoom.jpg" alt="Deluxe Room" />
            <p>Deluxe Room</p>
        </div>
        <div class="gallery-item rooms">
            <img src="Images/ExecutiveRoom.jpg" alt="Executive Suite" />
            <p>Executive Suite</p>
        </div>
        <div class="gallery-item amenities">
            <img src="Images/Spa.jpg" alt="Spa" />
            <p>Spa</p>
        </div>
        <div class="gallery-item dining">
            <img src="Images/Dining.jpg" alt="Restaurant" />
            <p>Dining</p>
        </div>
        <div class="gallery-item pool">
            <img src="Images/swimming-pool.jpg" alt="Swimming Pool" />
            <p>Swimming Pool</p>
        </div>
    </section>

</asp:Content>

