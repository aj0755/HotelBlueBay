using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageRooms : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string roomId = txtName.Text.Trim();  
        string roomNumber = txtNet.Text.Trim();  
        string capacity = txtPrice.Text.Trim();  
        string category = ddlCategory.SelectedValue;  
        string status = txtContains.Text.Trim(); 
        string bedType = txtDescription.Text.Trim();  
        string cleaningStatus = TextBox1.Text.Trim();  
        string features = TextBox2.Text.Trim();  
        string ratePerNight = TextBox3.Text.Trim();  

        string imagePath = ""; 

        if (fileUpload.HasFile)
        {
            string uploadsFolder = Server.MapPath("~/Uploads/");
            if (!Directory.Exists(uploadsFolder))
            {
                Directory.CreateDirectory(uploadsFolder);  
            }

            // Save the file to the "Uploads" folder and get the file path
            string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
            string savePath = uploadsFolder + fileName;
            fileUpload.SaveAs(savePath);
            imagePath = "~/Uploads/" + fileName;
        }
            
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO BB_Rooms (Room_ID, Rno,Images, Capacity,Type ,Status, Bedtype, Clean_Status, Features, Ratepernight) VALUES ('" + roomId + "', '" + roomNumber + "','" + imagePath + "','" + capacity + "', '" + category + "', '" + status + "', '" + bedType + "', '" + cleaningStatus + "', '" + features + "', '" + ratePerNight + "');", con);
        cmd.ExecuteNonQuery();
        lblMessage.Text = "Room Inserted successfully!";
        con.Close();

        txtName.Text = "";
        txtNet.Text = "";
        txtPrice.Text = "";
        ddlCategory.SelectedIndex = -1;
        txtContains.Text = "";
        txtDescription.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

        gvProducts.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;

            string roomid = gvProducts.DataKeys[row.RowIndex].Value.ToString();
            lblMessage.Text = roomid;

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM BB_Rooms WHERE Room_ID = '" + roomid + "'", con);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Room deleted successfully!";
            }
            else
            {
                lblMessage.Text = "Error: Category not found!";
            }
            gvProducts.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}