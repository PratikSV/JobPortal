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
                    // Store the UserID in session
                    Session["UserID"] = userID.Text.Trim();

                    // Redirect to home page
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "Invalid UserID or Password. Please try again.";
                }
        }
    }
}