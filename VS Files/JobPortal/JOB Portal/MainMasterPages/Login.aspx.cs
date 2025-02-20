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

            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=B:\Collage BCA\PROJECT\web app\JobPortal\VS Files\JobPortal\JOB Portal\App_Data\JobPortal.mdf;Integrated Security=True";

            SqlConnection con = new SqlConnection(connectionString);
            
                string query = "SELECT COUNT(*) FROM Loginemp WHERE userID=@userID AND password=@password"; // Fixed typo: 'emali' -> 'email'

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