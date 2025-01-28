using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Registration : System.Web.UI.Page
{
    private static string generatedOtp;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        try
        {
            txtFullName.Attributes["value"] = txtFullName.Text;
            txtEmail.Attributes["value"] = txtEmail.Text;
            txtPassword.Attributes["value"] = txtPassword.Text;
            txtConfirmPassword.Attributes["value"] = txtConfirmPassword.Text;
            txtPhone.Attributes["value"] = txtPhone.Text;

            string userEmail = txtEmail.Text.Trim();
            generatedOtp = new Random().Next(100000, 999999).ToString();

            string smtpAddress = "smtp.gmail.com";
            int portNumber = 587;
            bool enableSSL = true;

            string emailFrom = "stayatbluebay@gmail.com";
            string password = "jnrz luti orej cbiy";
            string emailTo = userEmail;
            string subject = "Reset Your Password";
            string body = "Your Otp is  " + generatedOtp;

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

            lblMessage.Text = "A Otp has been sent to your email address.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            otpModal.Visible = true;
        }
        catch (Exception ex)
        {
            lblMessage.Text = "An error occurred while sending the email. Please try again later." + ex.ToString();
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void btnVerifyOtp_Click(object sender, EventArgs e)
    {
        if (txtOtp.Text == generatedOtp)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO BB_User (Username, Password, Email, PhoneNo) VALUES ('" + txtFullName.Text + "', '" + txtPassword.Text + "', '" + txtEmail.Text + "', '" + txtPhone.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Session["UserEmail"] = txtEmail.Text;
            Response.Redirect("homepage.aspx?message=Account created successfully!");
        }
        else
        {
            lblOtpMessage.Text = "Invalid OTP! Please try again.";
        }
    }
}