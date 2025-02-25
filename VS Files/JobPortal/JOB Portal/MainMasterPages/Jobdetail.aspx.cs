using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace JOB_Portal.MainMasterPages
{
    public partial class Jobdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                   string jobId = Session["SelectedJobID"].ToString(); 
                    LoadJobDetails(jobId);
                
            }
        }

        private void LoadJobDetails(string jobId)
        {
            string connString = WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    string query = "SELECT JobTitle, Company, Location, Salary, EmploymentType, JobDescription, RequiredSkills, EducationExperience, " +
                                   "PostedDate, Vacancy, ApplicationDeadline, CompanyLogo, CompanyWebsite, CompanyEmail " +
                                   "FROM Jobs WHERE JobID = @JobID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@JobID", jobId);

                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read()) // If data is found
                            {
                                lblJobTitle.Text = reader["JobTitle"]?.ToString() ?? "N/A";
                                lblCompany.Text = reader["Company"]?.ToString() ?? "N/A";
                                lblLocation.Text = reader["Location"]?.ToString() ?? "N/A";
                                lblSalary.Text = reader["Salary"]?.ToString() ?? "N/A";
                                lblEmploymentType.Text = reader["EmploymentType"]?.ToString() ?? "N/A";
                                lblJobDescription.Text = reader["JobDescription"]?.ToString() ?? "N/A";
                                lblRequiredSkills.Text = reader["RequiredSkills"]?.ToString() ?? "N/A";
                                lblEducationExperience.Text = reader["EducationExperience"]?.ToString() ?? "N/A";

                                lblPostingDate.Text = reader["PostedDate"] != DBNull.Value
                                    ? Convert.ToDateTime(reader["PostedDate"]).ToString("MMM dd, yyyy")
                                    : "N/A";

                                lblVacancies.Text = reader["Vacancy"]?.ToString() ?? "N/A";

                                lblApplicationDeadline.Text = reader["ApplicationDeadline"] != DBNull.Value
                                    ? Convert.ToDateTime(reader["ApplicationDeadline"]).ToString("MMM dd, yyyy")
                                    : "N/A";

                                lblCompanyWebsite.Text = reader["CompanyWebsite"]?.ToString() ?? "N/A";
                                lblCompanyEmail.Text = reader["CompanyEmail"]?.ToString() ?? "N/A";

                                // Set Company Logo
                                imgCompanyLogo.ImageUrl = reader["CompanyLogo"] != DBNull.Value && !string.IsNullOrEmpty(reader["CompanyLogo"].ToString())
                                    ? reader["CompanyLogo"].ToString()
                                    : "~/Images/default-logo.png";

                                // Set Company Website Link
                                companyWebsiteLink.HRef = reader["CompanyWebsite"] != DBNull.Value
                                    ? reader["CompanyWebsite"].ToString()
                                    : "#";
                            }
                            else
                            {
                                // If no job is found, redirect back
                                Response.Redirect("Findajob.aspx");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error (for debugging)
                Response.Write("<script>alert('Database error: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        }
    }
}
