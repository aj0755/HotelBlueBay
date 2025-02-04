<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container">
        <h2 class="gallery-title">Hotel Gallery</h2>
        <p class="gallery-description">Explore our luxurious hotel facilities through the images below.</p>

        <!-- Gallery Grid -->
        <div class="gallery-grid">
            <div class="gallery-item">
                <a href="Images/DeluxeRoom.jpg" class="lightbox">
                    <img src="Images/DeluxeRoom.jpg" alt="Room 1" class="gallery-img" />
                </a>
            </div>
            
            <div class="gallery-item">
                <a href="Images/PresidentalRoom.jpg" class="lightbox">
                    <img src="Images/PresidentalRoom.jpg" alt="Room 2" class="gallery-img" />
                </a>
            </div>
            <div class="gallery-item">
                <a href="Images/amenity1.jpg" class="lightbox">
                    <img src="Images/amenity1.jpg" alt="Amenity 1" class="gallery-img" />
                </a>
            </div>
            
            <div class="gallery-item">
                <a href="Images/Dining.jpg" class="lightbox">
                    <img src="Images/Dining.jpg" alt="Restaurant" class="gallery-img" />
                </a>
            </div>
            
            <div class="gallery-item">
                <a href="Images/swimming-pool.jpg" class="lightbox">
                    <img src="Images/swimming-pool.jpg" alt="Pool" class="gallery-img" />
                </a>
            </div>
            <div class="gallery-item">
                <a href="Images/spa.jpg" class="lightbox">
                    <img src="Images/spa.jpg" alt="Spa" class="gallery-img" />
                </a>
            </div>
        </div>
    </div>
</asp:Content>

