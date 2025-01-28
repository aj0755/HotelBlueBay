using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string userEmail = Session["UserEmail"].ToString();
                LoadUserDetails(userEmail);
            }
        }
    }
    private void LoadUserDetails(string email)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM BB_User WHERE Email = '"+email+"'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lblUserName.Text = sdr["Username"].ToString();
                lblUserID.Text = sdr["User_ID"].ToString();
                txtFullName.Text = sdr["Username"].ToString();
                txtEmail.Text = sdr["Email"].ToString();
                txtPhone.Text = sdr["PhoneNo"].ToString();
            }
            con.Close();
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "Error while displaying Data:" + ex.Message;
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("homepage.aspx");
    }
    protected void btnEditProfile_Click(object sender, EventArgs e)
    {
        txtFullName.ReadOnly = false;
        txtPhone.ReadOnly = false;
        btnSave.Visible = true;
        btnEditProfile.Visible = false;
    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void btnBookingHistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookingHistory.aspx");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update BB_User set Username = '" + txtFullName.Text + "', PhoneNo = '" + txtPhone.Text + "' Where Email = '" + txtEmail.Text + "' ");
            cmd.Connection = con;
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                Label1.Text = "User information updated successfully.";
                txtFullName.ReadOnly = true;
                txtPhone.ReadOnly = true;

                btnEditProfile.Visible = true;
                btnSave.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Error updating user information." + ex.Message;
        }
    }
}