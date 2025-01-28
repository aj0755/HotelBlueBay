<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- main Section -->
    <section class="hero">
         <img src="Images/Background.jpg" alt="Hero Image"/>
          <div class="hero-overlay">
            <h1>Welcome to Hotel Bluebay</h1>
            <p>Experience the luxury by the scenery.</p>
            <asp:Button ID="Button1" runat="server" Text="Book Your Stay" 
                CssClass="cta-button" PostBackUrl="~/Rooms.aspx" />
          </div>
    </section>

    <section class="overview">
        <div class="overview-text">
            <h2>Your Perfect Stay Awaitsts</h2>
            <p>Hotel Bluebay offers the finest services and experiences for your perfect getaway.</p>
        </div>
    </section>

    <section class="services">
        <div class="service">
            <img src="Images/Spa.jpg" alt="Spa" />
            <h3>Spa & Wellness</h3>
            <p>Relax and rejuvenate with our world-class spa services.</p>
        </div>
        <div class="service">
            <img src="Images/dining.jpg" alt="Dining" />
            <h3>Dining</h3>
            <p>Enjoy gourmet meals with ocean views at our restaurant.</p>
        </div>
    </section>

    <section class="rooms">
        <div class="rooms-text">
            <h2>Our Rooms</h2>
            <p>Choose from our range of luxurious rooms with stunning views of the city.</p>
        </div>
        <div class="rooms-list">
            <div class="room">
                <img src="Images/DeluxeRoom.jpg" alt="Deluxe Room" />
                <h3>Deluxe Room</h3>
                <p>Enjoy a spacious and comfortable room with a king-size bed and city views.</p>
                <asp:Button ID="btnDeluxeRoom" runat="server" Text="View Details" 
                    CssClass="cta-button" PostBackUrl="~/Rooms.aspx" 
                    onclick="btnDeluxeRoom_Click" />
            </div>
            <div class="room">
                <img src="Images/ExecutiveRoom.jpg" alt="Executive Suite" />
                <h3>Executive Suite</h3>
                <p>A luxurious suite with a living area, private balcony, and top-notch amenities.</p>
                <asp:Button ID="btnExecutiveRoom" runat="server" Text="View Details" 
                    CssClass="cta-button" PostBackUrl="~/Rooms.aspx" 
                    onclick="btnExecutiveRoom_Click" />
            </div>
            <div class="room">
                <img src="Images/PresidentalRoom.jpg" alt="Presidential Suite" />
                <h3>Presidential Suite</h3>
                <p>Our most luxurious suite with a private pool and panoramic city views.</p>
                <asp:Button ID="btnPresidentialSuite" runat="server" Text="View Details" 
                    CssClass="cta-button" PostBackUrl="~/Rooms.aspx" 
                    onclick="btnPresidentialSuite_Click" />
            </div>
        </div>
    </section>

    <section class="about-us">
        <div class="about-us-text">
            <h2>About Hotel Bluebay</h2>
            <p>Hotel Bluebay is a luxurious hotel offering world-class amenities and unforgettable experiences. Our mission is to provide exceptional service and create lasting memories for our guests.</p>
            <p>Located on the serene shores of the city, our hotel provides a tranquil environment, perfect for relaxation and memorable expeience. Whether you’re here for business or leisure, we promise you an unforgettable stay.</p>
        </div>
        <div class="about-us-image">
            <img src="Images/Overview.jpg" alt="Hotel Bluebay Overview" />
        </div>
    </section>

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

    <div class="faq-section">
        <h2 class="faq-title">Frequently Asked Questions</h2>

        <div class="faq-item">
            <div class="question">
                What are the check-in and check-out times?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Check-in starts at 3:00 PM and check-out is by 11:00 AM.
            </div>
        </div>

        <div class="faq-item">
            <div class="question">
                Is breakfast included in the room rates?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Yes, all room rates include a complimentary breakfast.
            </div>
        </div>

        <div class="faq-item">
            <div class="question">
                Do you offer free Wi-Fi?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Yes, we offer free Wi-Fi in all rooms and public areas.
            </div>
        </div>

        <div class="faq-item">
            <div class="question">
                Can I cancel my reservation?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Yes, you can cancel your reservation up to 24 hours before your check-in date.
            </div>
        </div>

        <div class="faq-item">
            <div class="question">
                Do you provide airport shuttle service?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Yes, we offer airport shuttle service at an additional cost.
            </div>
        </div>

        <div class="faq-item">
            <div class="question">
                Are pets allowed in the hotel?
                <span class="toggle">+</span>
            </div>
            <div class="answer">
                Unfortunately, pets are not allowed in our hotel.
            </div>
        </div>
    </div>
    <script>
        // Check if the query string contains login=success
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('login') === 'success') {
        alertify.set('notifier', 'position', 'top-right');
            alertify.success('You are successfully logged in!');
            const newURL = window.location.href.split('?')[0];
        window.history.replaceState({}, document.title, newURL);
        }
    </script>
</asp:Content>