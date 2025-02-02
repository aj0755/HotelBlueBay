<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="payment-container">
        <!-- First container for payment options -->
        <div class="payment-options">
            <h2>Select Payment Method</h2>
            <div class="payment-method">
                <input type="radio" id="cash" name="payment-method" value="cash" onclick="updatePaymentSelection()">
                <label for="cash">Cash</label>
            </div>
            <div class="payment-method">
                <input type="radio" id="online" name="payment-method" value="online" onclick="updatePaymentSelection()">
                <label for="online">Online Payment (Barcode)</label>
            </div>
            <!-- QR Code Display -->
            <div id="qrCodeContainer" style="display:none; text-align: center; margin-top: 20px;">
                <h3>Scan the QR Code to Pay</h3>
                <div id="qrCode" style="display: flex; justify-content: center; align-items: center;"></div>
            </div>
        </div>

        <!-- Second container for product details -->
        <div class="order-details">
            <h2>Order Summary</h2>

            <p><strong>Product Name:</strong> <asp:Label ID="lblProductName" runat="server" Text="Deluxe"></asp:Label></p>
            <p><strong>Number of Rooms:</strong> <asp:Label ID="lblRoomCount" runat="server" Text="1"></asp:Label></p>
            <p><strong>Check-in Date:</strong> <asp:Label ID="lblCheckInDate" runat="server"></asp:Label></p>
            <p><strong>Check-out Date:</strong> <asp:Label ID="lblCheckOutDate" runat="server"></asp:Label></p>
            <p><strong>Number of Days:</strong> <asp:Label ID="lblNumDays" runat="server"></asp:Label></p>
            <p><strong>Price:</strong><asp:Label ID="lblPrice" runat="server" Text="7000.00"></asp:Label></p>
            <p><strong>GST (18%):</strong><asp:Label ID="lblGST" runat="server" Text="1260.00"></asp:Label></p>
            <p><strong>Total Amount:</strong><asp:Label ID="lblTotalAmount" runat="server" Text="8260.00"></asp:Label></p>
            
            <p><strong>Payment Option Selected:</strong> <span id="payment-selection">None</span></p>

            <asp:Button ID="confirmbtn" runat="server" Text="Confirm" OnClick="ConfirmBtn_Click" CssClass="confirm-button"/>
        </div>
    </div>

    <script>
        function updatePaymentSelection() {
            const selectedPayment = document.querySelector('input[name="payment-method"]:checked').value;
            document.getElementById('payment-selection').textContent = selectedPayment.charAt(0).toUpperCase() + selectedPayment.slice(1);

            if (selectedPayment === 'online') {
                document.getElementById('qrCodeContainer').style.display = 'block';
                
                const totalAmount = document.getElementById("<%= lblTotalAmount.ClientID %>").innerText.replace('₹', '').trim();
                const qrCodeContent = `https://paymentgateway.com/pay?amount=${totalAmount}`;
                
                document.getElementById('qrCode').innerHTML = '';
                
                new QRCode(document.getElementById("qrCode"), {
                    text: qrCodeContent,
                    width: 250,
                    height: 250
                });
            } else {
                document.getElementById('qrCodeContainer').style.display = 'none';
            }
        }
    </script>

</asp:Content>

