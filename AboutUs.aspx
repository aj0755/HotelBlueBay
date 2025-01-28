<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="about-us">
    <div class="about-us-text">
        <h2>About Hotel Bluebay</h2>
        <p>Hotel Bluebay is a luxurious beachfront resort offering world-class amenities and unforgettable experiences. Our mission is to provide exceptional service and create lasting memories for our guests.</p>
        <p>Located on the serene shores of the beach, our resort provides a tranquil environment, perfect for relaxation or adventure. Whether you’re here for business or leisure, we promise you an unforgettable stay.</p>
    </div>
    <div class="about-us-image">
        <img src="Images/Overview.jpg" alt="Hotel Bluebay Overview">
    </div>
</section>
<!-- Our Mission & Vision -->
<section class="mission-vision">
    <h2>Our Mission & Vision</h2>
    <div class="cards">
        <div class="card">
            <h3>Our Mission</h3>
            <p>To provide exceptional hospitality and create memorable experiences for all our guests.</p>
        </div>
        <div class="card">
            <h3>Our Vision</h3>
            <p>To be a global leader in luxury hospitality, known for our impeccable service and stunning locations.</p>
        </div>
    </div>
</section>

<!-- Why Choose Us -->
<section class="why-choose-us">
    <h2>Why Choose Us</h2>
    <ul>
        <li>Prime beachfront location</li>
        <li>World-class amenities</li>
        <li>Exceptional customer service</li>
        <li>Unforgettable experiences tailored to your needs</li>
    </ul>
</section>

<!-- What Our Customers Say -->
<section class="customer-say">
    <div class="customer-say-text">
        <h2>What Our Customers Say</h2>
        <div class="testimonials">
            <div class="testimonial">
                <p>"The best vacation experience ever! The rooms were stunning, and the staff was incredibly attentive."</p>
                <h4>- Sarah L.</h4>
            </div>
            <div class="testimonial">
                <p>"Unparalleled luxury and service. The spa treatments are a must-try!"</p>
                <h4>- Mark T.</h4>
            </div>
            <div class="testimonial">
                <p>"A truly unforgettable stay. Everything was perfect, from the food to the breathtaking views."</p>
                <h4>- Emily R.</h4>
            </div>
        </div>
    </div>
</section>
</asp:Content>

