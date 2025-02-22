using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Security.Cryptography;
using System.Web.Services.Description;
using System.Threading;
using System.Web.Configuration;

namespace JOB_Portal.MainMasterPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //SqlConnection server connection string

            string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            
                string query = "SELECT COUNT(*) FROM UserProfile WHERE UserID=@userID AND Password=@password"; 

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userID", userID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text);

                con.Open();
                int count = (int)cmd.ExecuteScalar();
                con.Close();

                if (count > 0)
                {
                Session["New"] = userID.Text.Trim(); // Store email in session
                Response.Redirect("Home.aspx"); // Redirect to dashboard after successful login
                }
                else
                {
                    lblErrorMessage.Text = "Invalid email or password. Please try again.";
                }
        }
    }
}