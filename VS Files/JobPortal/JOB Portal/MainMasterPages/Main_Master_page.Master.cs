using System;
using System.Web;
using System.Web.UI;

namespace JOB_Portal
{
    public partial class Main_Master_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] != null)
                {
                    // User is logged in
                    Loginbtn.Visible = false;  // Hide Login button
                    Registerbtn.Visible = false;  // Hide Register button
                    Logout.Visible = true;  // Show Logout button
                    lblUserID.Text = "Welcome, " + Session["UserID"].ToString(); // Display UserID
                    lblUserID.Visible = true;
                }
                else
                {
                    // User is not logged in
                    Loginbtn.Visible = true;
                    Registerbtn.Visible = true;
                    Logout.Visible = false;
                    lblUserID.Visible = false;
                }
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();  // Clear session
            Session.Abandon(); // Abandon session

            // Redirect to login page
            Response.Redirect("Login.aspx");
        }
    }
}
