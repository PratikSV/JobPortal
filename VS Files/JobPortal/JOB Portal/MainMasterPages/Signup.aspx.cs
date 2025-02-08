using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOB_Portal.MainMasterPages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string firstname = txtFirstname.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string repeatPassword = txtRepeatPassword.Text;

            if (string.IsNullOrEmpty(firstname) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(repeatPassword))
            {
                lblErrorMessage.Text = "All fields are required.";
                return;
            }

            if (password != repeatPassword)
            {
                lblErrorMessage.Text = "Passwords do not match.";
                return;
            }

            // Save user data to the database (database logic goes here)

            lblErrorMessage.Text = "Signup successful!";
            lblErrorMessage.ForeColor = System.Drawing.Color.Green;
        }
    }
}