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
                if (Session["SelectedJobID"] != null)
                {
                    string jobId = Session["SelectedJobID"].ToString();
                    LoadJobDetails(jobId);
                }
                else
                {
                    // Redirect back if JobID is missing
                    Response.Redirect("Findajob.aspx");
                }
            }
        }

        private void LoadJobDetails(string jobId)
        {
            string connString = WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT JobTitle, Company, Location, Salary, EmploymentType, JobDescription, RequiredSkills, EducationExperience, " +
                               "PostedDate, Vacancy, ApplicationDeadline, CompanyLogo, CompanyWebsite, CompanyEmail " + // ✅ Fixed column names
                               "FROM Jobs WHERE JobID = @JobID";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@JobID", jobId);

                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            lblJobTitle.Text = reader["JobTitle"].ToString();
                            lblCompany.Text = reader["Company"].ToString();
                            lblLocation.Text = reader["Location"].ToString();
                            lblSalary.Text = reader["Salary"].ToString();
                            lblEmploymentType.Text = reader["EmploymentType"].ToString();
                            lblJobDescription.Text = reader["JobDescription"].ToString();
                            lblRequiredSkills.Text = reader["RequiredSkills"].ToString();
                            lblEducationExperience.Text = reader["EducationExperience"].ToString();
                            lblPostingDate.Text = Convert.ToDateTime(reader["PostedDate"]).ToString("MMM dd, yyyy"); // ✅ Fixed
                            lblVacancies.Text = reader["Vacancy"].ToString(); // ✅ Fixed
                            lblApplicationDeadline.Text = Convert.ToDateTime(reader["ApplicationDeadline"]).ToString("MMM dd, yyyy");
                            lblCompanyWebsite.Text = reader["CompanyWebsite"].ToString();
                            lblCompanyEmail.Text = reader["CompanyEmail"].ToString();

                            // Set Company Logo
                            imgCompanyLogo.ImageUrl = !string.IsNullOrEmpty(reader["CompanyLogo"].ToString())
                                ? reader["CompanyLogo"].ToString()
                                : "~/Images/default-logo.png";

                            // Set Company Website Link
                            companyWebsiteLink.HRef = reader["CompanyWebsite"].ToString();
                        }
                        else
                        {
                            Response.Redirect("Findajob.aspx");
                        }
                    }
                }
            }
        }


        //private void LoadJobDetails(string jobId)
        //{
        //    string connString = WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString;
        //    using (SqlConnection conn = new SqlConnection(connString))
        //    {
        //        string query = "SELECT JobTitle, Company, Location, Salary, EmploymentType, JobDescription, RequiredSkills, EducationExperience, " +
        //                       "PostingDate, Vacancies, ApplicationDeadline, CompanyLogo, CompanyWebsite, CompanyEmail " +
        //                       "FROM Jobs WHERE JobID = @JobID";

        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            cmd.Parameters.AddWithValue("@JobID", jobId);

        //            conn.Open();
        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                if (reader.Read())
        //                {
        //                    // Set values to the labels on the page
        //                    lblJobTitle.Text = reader["JobTitle"].ToString();
        //                    lblCompany.Text = reader["Company"].ToString();
        //                    lblLocation.Text = reader["Location"].ToString();
        //                    lblSalary.Text = reader["Salary"].ToString();
        //                    lblEmploymentType.Text = reader["EmploymentType"].ToString();
        //                    lblJobDescription.Text = reader["JobDescription"].ToString();
        //                    lblRequiredSkills.Text = reader["RequiredSkills"].ToString();
        //                    lblEducationExperience.Text = reader["EducationExperience"].ToString();
        //                    lblPostingDate.Text = Convert.ToDateTime(reader["PostingDate"]).ToString("MMM dd, yyyy");
        //                    lblVacancies.Text = reader["Vacancies"].ToString();
        //                    lblApplicationDeadline.Text = Convert.ToDateTime(reader["ApplicationDeadline"]).ToString("MMM dd, yyyy");
        //                    lblCompanyWebsite.Text = reader["CompanyWebsite"].ToString();
        //                    lblCompanyEmail.Text = reader["CompanyEmail"].ToString();

        //                    // Set Company Logo
        //                    if (!string.IsNullOrEmpty(reader["CompanyLogo"].ToString()))
        //                    {
        //                        imgCompanyLogo.ImageUrl = reader["CompanyLogo"].ToString();
        //                    }
        //                    else
        //                    {
        //                        imgCompanyLogo.ImageUrl = "~/Images/default-logo.png"; // Default logo if none provided
        //                    }

        //                    // Set Company Website Link
        //                    companyWebsiteLink.HRef = reader["CompanyWebsite"].ToString();
        //                }
        //                else
        //                {
        //                    // Job not found, redirect back
        //                    Response.Redirect("Findajob.aspx");
        //                }
        //            }
        //        }
        //    }
        //}
    }
}
