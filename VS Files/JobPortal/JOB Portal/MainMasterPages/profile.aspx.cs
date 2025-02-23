using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;
using System.Web.UI;

namespace JOB_Portal.MainMasterPages
{
    public partial class ProfileEdit : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Login.aspx", true);
                return;
            }

            if (string.IsNullOrEmpty(connectionString))
            {
                ShowError("Database connection string is missing or invalid.");
                return;
            }

            if (!IsPostBack)
            {
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            try
            {
                string userId = Session["UserID"].ToString();

                using (SqlConnection conn = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand("UsersProfile", conn)) // Updated stored procedure name
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", userId);

                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtFullName.Text = GetSafeString(reader["Name"]);
                            txtEmail.Text = GetSafeString(reader["Email"]);
                            txtPhone.Text = GetSafeString(reader["PhoneNo"]);
                            txtAddress.Text = GetSafeString(reader["Address"]);
                            txtAbout.Text = GetSafeString(reader["AboutMe"]);
                            txtExperience.Text = GetSafeString(reader["Experience"]);
                            txtEducation.Text = GetSafeString(reader["Education"]);
                            txtSkills.Text = GetSafeString(reader["Skills"]);

                            if (reader["ProfileImage"] != DBNull.Value)
                            {
                                byte[] imageData = (byte[])reader["ProfileImage"];
                                string base64String = Convert.ToBase64String(imageData);
                                imgProfile.ImageUrl = "data:image/jpeg;base64," + base64String;
                            }
                            else
                            {
                                imgProfile.ImageUrl = "~/Images/profile-placeholder.jpg";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ShowError("Error loading profile: " + ex.Message);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string userId = Session["UserID"].ToString();
                byte[] profileImageBytes = null;

                if (fileProfilePic.HasFile)
                {
                    string fileExtension = Path.GetExtension(fileProfilePic.FileName).ToLower();
                    string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (!Array.Exists(allowedExtensions, x => x == fileExtension))
                    {
                        ShowError("Please upload only image files (.jpg, .jpeg, .png, .gif)");
                        return;
                    }

                    if (fileProfilePic.PostedFile.ContentLength > 5242880) // 5MB
                    {
                        ShowError("File size should not exceed 5MB");
                        return;
                    }

                    using (BinaryReader br = new BinaryReader(fileProfilePic.PostedFile.InputStream))
                    {
                        profileImageBytes = br.ReadBytes(fileProfilePic.PostedFile.ContentLength);
                    }
                }

                using (SqlConnection conn = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand("UsersProfile", conn)) // Updated stored procedure name
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@UserID", userId);
                    cmd.Parameters.AddWithValue("@Name", txtFullName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneNo", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@AboutMe", txtAbout.Text.Trim());
                    cmd.Parameters.AddWithValue("@Experience", txtExperience.Text.Trim());
                    cmd.Parameters.AddWithValue("@Education", txtEducation.Text.Trim());
                    cmd.Parameters.AddWithValue("@Skills", txtSkills.Text.Trim());

                    if (profileImageBytes != null)
                    {
                        cmd.Parameters.AddWithValue("@ProfileImage", profileImageBytes);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@ProfileImage", DBNull.Value);
                    }

                    conn.Open();
                    cmd.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, GetType(),
                        "success", "alert('Profile updated successfully!'); window.location = 'profile.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                ShowError("Error saving profile: " + ex.Message);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MainMasterPages/profile.aspx");
        }

        private string GetSafeString(object value)
        {
            return value == DBNull.Value ? string.Empty : value.ToString();
        }

        private void ShowError(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(),
                "error", $"alert('{message.Replace("'", "\\'")}');", true);
        }
    }
}
