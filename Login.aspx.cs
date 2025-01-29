using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string uname = txtEmail.Text;
            if (uname.StartsWith("AD_"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM BB_Admin WHERE Admin_ID = '" + txtEmail.Text + "' AND Admin_Password = '" + txtPassword.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Session["UserEmail"] = txtEmail.Text;
                    lblMessage.Text = "Login successful!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("http://localhost:40412/HotelBlueBay/Admin/admindashboard.aspx?login=success");
                }
                else
                {
                    lblMessage.Text = "Invalid email or password!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM BB_User WHERE Email = '" + txtEmail.Text + "' AND Password = '" + txtPassword.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                SqlDataReader sdr = cmd.ExecuteReader();
                
                if (sdr.HasRows)
                {
                    Session["UserEmail"] = txtEmail.Text;
                    lblMessage.Text = "Login successful!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("Homepage.aspx?login=success");
                }
                else
                {
                    lblMessage.Text = "Invalid email or password!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error: " + ex.Message;
        }
    }
}