<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Contact Us</h1>

    <!-- Contact Information and Form Container -->
    <section class="contact-container">
        <!-- Left: Contact Information -->
        <div class="contact-info">
            <h2>Contact Information</h2>
            <p>If you have any questions or need more information, feel free to reach out to us.</p>
            <ul>
                <li><span>Phone:</span> +91 234 567 89</li>
                <li><span>Email:</span> <a href="mailto:stayatbluebay@gmail.com">stayatbluebay@gmail.com</a></li>
                <li><span>Address:</span> 123 Main Street, Hotel Bluebay Anand, India</li>
            </ul>
        </div>

        <!-- Right: Contact Form -->
        <div class="contact-form">
            <h2>Send Us a Message</h2>

            <div class="form-group">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name:" AssociatedControlID="txtFullName" />
                &nbsp;&nbsp;
                <asp:TextBox ID="txtFullName" runat="server" CssClass="input-control" MaxLength="100" />
                <br />
                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ForeColor="Red" ErrorMessage="Full Name is required" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email id:" AssociatedControlID="txtEmail" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-control" MaxLength="100" />
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Email is required" />
                <br />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email format" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" Text="Message:" AssociatedControlID="txtMessage" />
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMessage" runat="server" CssClass="input-control" TextMode="MultiLine" Rows="5" MaxLength="500" />
                <br />
                <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ForeColor="Red" ErrorMessage="Message is required" />
            </div>

            <div class="form-group">
                <asp:Button ID="btnSubmitMessage" runat="server" Text="Send Message" CssClass="cta-button"/>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <section class="map-section">
        <h2>Our Location</h2>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58772.37661108545!2d72.89832463429048!3d22.55612308054471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e59e68f31ab5b%3A0x6eeb1e7f712bd8f7!2sAnand%2C%20Gujarat%2C%20India!5e0!3m2!1sen!2sus!4v1688674093891!5m2!1sen!2sus" allowfullscreen="" loading="lazy"></iframe>
    </section>
</asp:Content>

