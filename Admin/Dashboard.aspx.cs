using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand CountUser = new SqlCommand("SELECT COUNT(*) FROM BB_User", con);
            int userCount = (int)CountUser.ExecuteScalar();
            lblTotalUsers.Text = userCount.ToString();
            SqlCommand CountCat = new SqlCommand("SELECT COUNT(*) FROM BB_Category", con);
            int CatCount = (int)CountCat.ExecuteScalar();
            lblTotalCategories.Text = CatCount.ToString();
            SqlCommand CountRooms = new SqlCommand("SELECT COUNT(*) FROM BB_Rooms", con);
            int RoomCount = (int)CountRooms.ExecuteScalar();
            lblTotalProducts.Text = RoomCount.ToString();
            SqlCommand CountBooking = new SqlCommand("SELECT COUNT(*) FROM BB_Booking", con);
            int BookingCount = (int)CountBooking.ExecuteScalar();
            lblTotalOrders.Text = BookingCount.ToString();
            con.Close();
        }
        catch (Exception ex)
        {
            lblErrorMsg.Text = ex.Message;
        }
    }
    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageCategory.aspx");
    }
    protected void btnAddRooms_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageRooms.aspx");
    }
}