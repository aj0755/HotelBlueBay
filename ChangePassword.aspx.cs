using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string currentPassword = txtCurrentPassword.Text.Trim();
            string newPassword = txtNewPassword.Text.Trim();

            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();

                    con.Open();

                    SqlCommand checkPasswordCmd = new SqlCommand(
                        "SELECT COUNT(*) FROM BB_User WHERE Email = '"+email+"' AND Password = '"+currentPassword+"'", con);

                    int count = Convert.ToInt32(checkPasswordCmd.ExecuteScalar());

                    if (count == 1)
                    {
                        SqlCommand updatePasswordCmd = new SqlCommand(
                            "UPDATE RAE_User SET Password = '"+newPassword+"' WHERE Email = '"+email+"'", con);

                        int rowsAffected = updatePasswordCmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Password changed successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblMessage.Text = "Error updating password. Please try again.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Current password is incorrect.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            else
            {
                lblMessage.Text = "Session expired. Please log in again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = "An error occurred: " + ex.Message;
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}