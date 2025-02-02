using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string roomTitle = Session["RoomTitle"] as string;
        decimal price = Convert.ToDecimal(Session["Price"]);
        int numRooms = Convert.ToInt32(Session["NumRooms"]);
        int numDays = Convert.ToInt32(Session["NumDays"]);
        string checkInDate = Session["CheckInDate"] != null ? Convert.ToDateTime(Session["CheckInDate"]).ToString("yyyy-MM-dd") : "N/A";
        string checkOutDate = Session["CheckOutDate"] != null ? Convert.ToDateTime(Session["CheckOutDate"]).ToString("yyyy-MM-dd") : "N/A";

        if (price > 0 && numRooms > 0)
        {
            decimal totalPriceBeforeGST = price * numRooms * numDays;
            decimal gstAmount = totalPriceBeforeGST * 0.18m;
            decimal totalAmount = totalPriceBeforeGST + gstAmount;

            lblProductName.Text = roomTitle;
            lblCheckInDate.Text = checkInDate;
            lblCheckOutDate.Text = checkOutDate;
            lblNumDays.Text = Convert.ToString(numDays);
            lblPrice.Text = "₹" + totalPriceBeforeGST.ToString("0.00");
            lblRoomCount.Text = numRooms.ToString();
            lblGST.Text = "₹" + gstAmount.ToString("0.00");
            lblTotalAmount.Text = "₹" + totalAmount.ToString("0.00");
        }
    }
    protected void ConfirmBtn_Click(object sender, EventArgs e)
    {

    }
}