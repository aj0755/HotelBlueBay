using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private string visitorFilePath = HttpContext.Current.Server.MapPath("~/App_Data/visitorCount.txt");
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
        UpdateVisitorCount();
    }
    private void UpdateVisitorCount()
    {
        try
        {
            if (Application["VisitorCount"] == null)
            {
                Application["VisitorCount"] = 1;
            }
            else
            {
                Application["VisitorCount"] = (int)Application["VisitorCount"] + 1;
            }

            lblVisitorCount.Text = "Visitor Count: " + Application["VisitorCount"].ToString();
        }
        catch (Exception ex)
        {
            lblVisitorCount.Text = "Error tracking visitors";
        }
    }
}
