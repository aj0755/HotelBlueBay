using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rooms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDeluxeRoom_Click(object sender, EventArgs e)
    {
        Session["RoomType"] = "Deluxe";
        Response.Redirect("RoomDetails.aspx");
    }
    protected void btnExecutiveRoom_Click(object sender, EventArgs e)
    {
        Session["RoomType"] = "Executive";
        Response.Redirect("RoomDetails.aspx");
    }
    protected void btnPresidentialSuite_Click(object sender, EventArgs e)
    {
        Session["RoomType"] = "Presidential";
        Response.Redirect("RoomDetails.aspx");
    }
}