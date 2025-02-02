using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RoomDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack) 
            {
                if ("Deluxe" == Session["RoomType"])
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM BB_Rooms WHERE Room_ID = 'DR1'");
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        while (sdr.Read())
                        {
                            lblRoomTitle.Text = sdr["Type"].ToString();
                            //lblRoomDescription.Text = sdr["RoomDescription"].ToString(); 
                            lblPrice.Text = "Price: ₹" + sdr["Ratepernight"].ToString() + " per night";


                            string features = sdr["Features"].ToString();
                            lblRoomFeatures.Text = features.Replace(",", "<br />");


                            string imagePath = sdr["RoomImage"].ToString();
                            imgMain.ImageUrl = imagePath;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid email or password!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    con.Close();
                }
                else if("Executive" == Session["RoomType"])
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM BB_Rooms WHERE Room_ID = 'ER1'");
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        while (sdr.Read())
                        {
                            lblRoomTitle.Text = sdr["Type"].ToString();
                            //lblRoomDescription.Text = sdr["RoomDescription"].ToString(); 
                            lblPrice.Text = "Price: ₹" + sdr["Ratepernight"].ToString() + " per night";


                            string features = sdr["Features"].ToString();
                            lblRoomFeatures.Text = features.Replace(",", "<br />");


                            string imagePath = sdr["RoomImage"].ToString();
                            imgMain.ImageUrl = imagePath;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid email or password!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    con.Close();
                }
                else if ("Presidential" == Session["RoomType"])
                {
                     con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM BB_Rooms WHERE Room_ID = 'PR1'");
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        while (sdr.Read())
                        {
                            lblRoomTitle.Text = sdr["Type"].ToString();
                            //lblRoomDescription.Text = sdr["RoomDescription"].ToString(); 
                            lblPrice.Text = "Price: ₹" + sdr["Ratepernight"].ToString() + " per night";


                            string features = sdr["Features"].ToString();
                            lblRoomFeatures.Text = features.Replace(",", "<br />");


                            string imagePath = sdr["RoomImage"].ToString();
                            imgMain.ImageUrl = imagePath;
                        }
                    }
                    con.Close();
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnBookNow_Click(object sender, EventArgs e)
    {
        //try
        //{
            string roomTitle = lblRoomTitle.Text;
            string pricestr = lblPrice.Text.Replace("Price: ₹", "").Replace(" per night", "").Trim();
            decimal price = Convert.ToDecimal(pricestr);
            int numRooms = Convert.ToInt32(ddlNumRooms.SelectedValue);

            DateTime checkInDate = Convert.ToDateTime(txtCheckin.Text);
            DateTime checkOutDate = Convert.ToDateTime(txtCheckout.Text);
            int numDays = (checkOutDate - checkInDate).Days;

            if (numDays <= 0)
            {
                lblMessage.Text = "Check-out date must be after check-in date.";
                return;
            }

            Session["RoomTitle"] = roomTitle;
            Session["Price"] = price;
            Session["NumRooms"] = numRooms;
            Session["CheckInDate"] = checkInDate;
            Session["CheckOutDate"] = checkOutDate;
            Session["NumDays"] = numDays;

            con.Open();
            decimal totalamount = price * numDays * numRooms;
            string BookStatus = "Pending";
            string userEmail = Convert.ToString(Session["UserEmail"]);
            SqlCommand SUcmd = new SqlCommand("SELECT * FROM BB_User WHERE Email = '"+userEmail+"'",con);
            SUcmd.ExecuteNonQuery();
            SqlDataReader sdr = SUcmd.ExecuteReader(); 
            int UserId = 0;
            if (sdr.Read()) 
            {
                UserId = Convert.ToInt32(sdr["User_ID"]);
            }
            sdr.Close();

            SqlCommand SRcmd = new SqlCommand("SELECT * FROM BB_Rooms WHERE Type = '" + lblRoomTitle.Text + "'", con);
            SqlDataReader sdr1 = SRcmd.ExecuteReader();
            string RoomId = null;
            if (sdr1.Read())
            {
                RoomId = sdr1["Room_ID"].ToString();
            }
            sdr1.Close();

            SqlCommand Icmd = new SqlCommand("INSERT INTO BB_Booking (User_ID,Room_ID,CheckInDate,CheckOutDate, TotalAmount, BookStatus) VALUES (" + UserId + ", '"+RoomId+"', '" + checkInDate + "', '" + checkOutDate + "', '" + totalamount + "', '" + BookStatus + "')", con);
            Icmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Payment.aspx");
        //}
        //catch (Exception ex)
        //{
        //    lblMessage.Text = ex.Message;
        //}
    }
}