using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

namespace JOB_Portal.MainMasterPages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            string name = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string userID = txtUserID.Text.Trim();
            string password = txtPassword.Text.Trim(); // Directly storing the password
            string phoneno = txtPhone.Text.Trim();

            try
            {
                // ✅ Retrieve the connection string from web.config
                string connectionString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;

                if (string.IsNullOrEmpty(connectionString))
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Database connection string is missing!";
                    lblMessage.Visible = true;
                    return;
                }

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // ✅ Step 1: Check if UserID, Email, or PhoneNo already exists
                    string checkQuery = "SELECT COUNT(*) FROM UserProfile WHERE UserID = @UserID OR Email = @Email OR PhoneNo = @PhoneNo";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@UserID", userID);
                        checkCmd.Parameters.AddWithValue("@Email", email);
                        checkCmd.Parameters.AddWithValue("@PhoneNo", phoneno);

                        int existingUserCount = (int)checkCmd.ExecuteScalar();

                        if (existingUserCount > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Visible = true;
                            lblMessage.Text = "UserID, Email, or Phone number already exists!";
                            return; // Stop execution if user already exists
                        }
                    }

                    // ✅ Step 2: Insert data into UserProfile table
                    string insertQuery = "INSERT INTO UserProfile (UserID, Name, Email, PhoneNo, Password) VALUES (@UserID, @Name, @Email, @PhoneNo, @Password)";
                    using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                    {
                        insertCmd.Parameters.AddWithValue("@UserID", userID);
                        insertCmd.Parameters.AddWithValue("@Name", name);
                        insertCmd.Parameters.AddWithValue("@Email", email);
                        insertCmd.Parameters.AddWithValue("@PhoneNo", phoneno);
                        insertCmd.Parameters.AddWithValue("@Password", password); // Directly storing password

                        int rowsAffected = insertCmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Visible = true;
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Sign-up successful!";
                        }
                        else
                        {
                            lblMessage.Visible = true;
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Error: Sign-up failed.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Database Error: " + ex.Message;
            }
        }
    }
}
