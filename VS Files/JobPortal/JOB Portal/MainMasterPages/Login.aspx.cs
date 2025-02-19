using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOB_Portal.MainMasterPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (IsValidUser(email, password))
            {
                Response.Redirect("Dashboard.aspx"); // Redirect to dashboard after successful login
            }
            else
            {
                lblErrorMessage.Text = "Invalid email or password. Please try again.";
            }
        }
        private bool IsValidUser(string email, string password)
        {
            // Replace this with actual database authentication
            return email == "admin@exp.com" && password == "password123";
        }
    }
}