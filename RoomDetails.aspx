<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomDetails.aspx.cs" Inherits="RoomDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
       <div class="container">
        <div class="room-detail-container">
            <h2 class="room-title" runat="server" id="lblRoomType"></h2> 
            <p class="room-status" runat="server" id="lblRoomStatus"></p> <!-- Room Status (Available or Booked) -->

            <!-- Room Details -->
            <div class="room-info">
                <div class="room-detail">
                    <strong>Room Type:</strong> <span runat="server" id="InfolblRoomType"></span> <!-- Room Type -->
                </div>
                <div class="room-detail">
                    <strong>Capacity:</strong> <span runat="server" id="lblCapacity"></span> <!-- Capacity -->
                </div>
                <div class="room-detail">
                    <strong>Bed Type:</strong> <span runat="server" id="lblBedType"></span> <!-- Bed Type -->
                </div>
                <div class="room-detail">
                    <strong>Room Features:</strong>
                    <ul>
                        <li runat="server" id="lblRoomFeatures"></li> <!-- Room Features -->
                    </ul>
                </div>
                <div class="room-detail">
                    <strong>Rate Per Night:</strong> Rs.<span runat="server" id="lblRatePerNight"></span> <!-- Rate Per Night -->
                </div>
            </div>

            <!-- Book Now Button -->
            <div class="book-now-container">
                <asp:Button ID="btnBookNow" runat="server" Text="Book Now" CssClass="btn-book-now"  />
            </div>
        </div>
    </div>

</asp:Content>

