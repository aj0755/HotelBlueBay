using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand getMaxIdCmd = new SqlCommand("SELECT TOP 1 category_id FROM BB_Category ORDER BY category_id DESC", con);
            object lastIdObj = getMaxIdCmd.ExecuteScalar();
    
            string newCategoryId = "C1";
            if (lastIdObj != null)
            {
                string lastId = lastIdObj.ToString(); 
                int lastNumber = int.Parse(lastId.Substring(1)); 
                newCategoryId = "C" + (lastNumber + 1);
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO BB_Category (Category_ID, Categoryname) VALUES ('"+newCategoryId+"', '"+txtCategoryName.Text+"')", con);
    
            cmd.ExecuteNonQuery();
            con.Close();
            gvCategories.DataBind();
        }
        catch(Exception ex)
        {
            lblMesage.Text = ex.Message;  
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;

            string categorynm = gvCategories.DataKeys[row.RowIndex].Value.ToString();
            lblMesage.Text = categorynm;

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM BB_Category WHERE Categoryname = '" + categorynm + "'", con);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMesage.Text = "Category deleted successfully!";
            }
            else
            {
                lblMesage.Text = "Error: Category not found!";
            }
            gvCategories.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            lblMesage.Text = ex.Message;
        }
    }
}