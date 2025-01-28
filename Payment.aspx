<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="payment-container">
        <!-- First container for payment options -->
        <div class="payment-options">
            <h2>Select Payment Method</h2>
            <div class="payment-method">
                <label for="cash">Cash</label>
                <input type="radio" id="cash" name="payment-method" value="cash">
            </div>
            <div class="payment-method">
                <label for="online">Online Payment (Barcode)</label>
                <input type="radio" id="online" name="payment-method" value="online">
            </div>
        </div>

        <!-- Second container for product details -->
        <div class="order-details">
            <h2>Order Summary</h2>
            <p><strong>Product Name:</strong> Example Product</p>
            <p><strong>Price:</strong> $100</p>
            <p><strong>Payment Option Selected:</strong> <span id="payment-selection">None</span></p>
            <button id="confirm-btn">Confirm</button>
        </div>
    </div>
    <script>
 document.querySelectorAll('input[name="payment-method"]').forEach((radio) => {
            radio.addEventListener('change', function () {
                const selectedPayment = document.querySelector('input[name="payment-method"]:checked').value;
                document.getElementById('payment-selection').textContent = selectedPayment.charAt(0).toUpperCase() + selectedPayment.slice(1);
            });
        });

        // JavaScript to handle the Confirm button click
        document.getElementById('confirm-btn').addEventListener('click', function () {
            const selectedPayment = document.querySelector('input[name="payment-method"]:checked');
            if (selectedPayment) {
                alert('Payment Method Confirmed: ' + selectedPayment.value.charAt(0).toUpperCase() + selectedPayment.value.slice(1));
            } else {
                alert('Please select a payment method first.');
            }
        });
</script>

</asp:Content>

