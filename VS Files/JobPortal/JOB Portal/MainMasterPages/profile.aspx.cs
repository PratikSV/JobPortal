using System;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;

namespace JOB_Portal.MainMasterPages
{
    public partial class ProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                profileContainer.Visible = false;
                loginMessage.Visible = true;
            }
            else if (!IsPostBack)
            {
                profileContainer.Visible = true;
                loginMessage.Visible = false;
                LoadUserProfile(Session["UserID"].ToString());
            }
        }

        private void LoadUserProfile(string userID)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Address, AboutMe, Experience, Education, Skills, ProfileImage FROM UserProfile WHERE UserID = @UserID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", userID);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    lblName.Text = txtName.Text = reader["Name"].ToString();
                    lblAddress.Text = txtAddress.Text = reader["Address"]?.ToString() ?? "Not Provided";
                    lblAboutMe.Text = txtAboutMe.Text = reader["AboutMe"]?.ToString() ?? "No details available.";
                    lblExperience.Text = txtExperience.Text = reader["Experience"]?.ToString() ?? "No experience listed.";
                    lblEducation.Text = txtEducation.Text = reader["Education"]?.ToString() ?? "No education details.";
                    lblSkills.Text = txtSkills.Text = reader["Skills"]?.ToString() ?? "No skills listed.";

                    if (reader["ProfileImage"] != DBNull.Value)
                    {
                        byte[] imgData = (byte[])reader["ProfileImage"];
                        string base64Img = Convert.ToBase64String(imgData);
                        imgProfile.ImageUrl = "data:image/png;base64," + base64Img;
                    }
                    else
                    {
                        imgProfile.ImageUrl = "~/Images/profile-placeholder.jpg";
                    }
                }

                con.Close();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtName.Visible = txtAddress.Visible = txtAboutMe.Visible = txtExperience.Visible = txtEducation.Visible = txtSkills.Visible = true;
            lblName.Visible = lblAddress.Visible = lblAboutMe.Visible = lblExperience.Visible = lblEducation.Visible = lblSkills.Visible = false;
            fileUploadProfile.Visible = true;

            btnEdit.Visible = false;
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"UPDATE UserProfile 
                                 SET Name=@Name, Address=@Address, AboutMe=@AboutMe, 
                                     Experience=@Experience, Education=@Education, Skills=@Skills, ProfileImage=@ProfileImage 
                                 WHERE UserID=@UserID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@AboutMe", txtAboutMe.Text.Trim());
                cmd.Parameters.AddWithValue("@Experience", txtExperience.Text.Trim());
                cmd.Parameters.AddWithValue("@Education", txtEducation.Text.Trim());
                cmd.Parameters.AddWithValue("@Skills", txtSkills.Text.Trim());

                if (fileUploadProfile.HasFile)
                {
                    byte[] imgBytes = fileUploadProfile.FileBytes;
                    cmd.Parameters.AddWithValue("@ProfileImage", imgBytes);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ProfileImage", DBNull.Value);
                }

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            LoadUserProfile(Session["UserID"].ToString());

            txtName.Visible = txtAddress.Visible = txtAboutMe.Visible = txtExperience.Visible = txtEducation.Visible = txtSkills.Visible = fileUploadProfile.Visible = false;
            lblName.Visible = lblAddress.Visible = lblAboutMe.Visible = lblExperience.Visible = lblEducation.Visible = lblSkills.Visible = true;
            btnEdit.Visible = true;
            btnSave.Visible = false;
        }

        protected void btnRedirectToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
