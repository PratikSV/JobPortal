using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;

namespace JOB_Portal.MainMasterPages
{
    public partial class Profile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Add logic here to load user data if necessary
                LoadProfile();
            }
        }

        private void LoadProfile()
        {
            // Fetch user details from database (if applicable)
            // For now, using static data for demonstration

            string userName = "John Doe";
            string userRole = "Software Developer | Open to Work";
            string userLocation = "New York, USA";

            // Update UI elements dynamically if needed
            // lblName.Text = userName; (if using a Label control)
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            // Redirect to an edit profile page
            Response.Redirect("edit-profile.aspx");
        }
    }
}
