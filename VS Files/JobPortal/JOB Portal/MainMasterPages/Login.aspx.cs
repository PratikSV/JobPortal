using System;
using System.Data.SqlClient;
using System.Web;
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
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM UserProfile WHERE UserID=@userID AND Password=@password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userID", userID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text);

                con.Open();
                int count = (int)cmd.ExecuteScalar();
                con.Close();

                if (count > 0)
                {
                    Session["UserID"] = userID.Text.Trim();
                    Response.Redirect("profile.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "Invalid UserID or Password. Please try again.";
                }
            }
        }
    }
}
