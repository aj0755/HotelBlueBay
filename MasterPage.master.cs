using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserEmail"] != null)
            {
                Console.WriteLine("Session UserEmail: " + Session["UserEmail"]);
            }
            else
            {
                Console.WriteLine("Session UserEmail is null.");
            }
        }
    }
    protected void btnUserLogo_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserEmail"] != null)
        {
            Response.Redirect("UserInfo.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}
