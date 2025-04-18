﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace JOB_Portal.MainMasterPages
{
    public partial class Findajob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializeFilters();
                LoadJobs();
            }
        }

        private void InitializeFilters()
        {
            // Initialize Category dropdown
            ddlCategory.Items.Clear();
            ddlCategory.Items.Add(new ListItem("All Category", ""));
            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString))
            {
                string query = "SELECT DISTINCT Category FROM Jobs ORDER BY Category";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string category = reader["Category"].ToString();
                                ddlCategory.Items.Add(new ListItem(category, category));
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        
                        System.Diagnostics.Debug.WriteLine($"Error loading categories: {ex.Message}");
                    }
                }
            }

            
            ddlLocation.Items.Clear();
            ddlLocation.Items.Add(new ListItem("Anywhere", ""));
            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString))
            {
                string query = "SELECT DISTINCT Location FROM Jobs ORDER BY Location";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string location = reader["Location"].ToString();
                                ddlLocation.Items.Add(new ListItem(location, location));
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        
                        System.Diagnostics.Debug.WriteLine($"Error loading locations: {ex.Message}");
                    }
                }
            }

            
            ddlExperience.Items.Clear();
            ddlExperience.Items.Add(new ListItem("All Experience", ""));
            ddlExperience.Items.Add(new ListItem("1-2 years", "1-2"));
            ddlExperience.Items.Add(new ListItem("2-3 years", "2-3"));
            ddlExperience.Items.Add(new ListItem("3-4 years", "3-4"));
            ddlExperience.Items.Add(new ListItem("4-5 years", "4-5"));
            ddlExperience.Items.Add(new ListItem("6+ years", "6+"));
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            LoadJobs();
        }

        private void LoadJobs()
        {
            string connString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT JobID, JobTitle, Company, Location, Salary, EmploymentType, CompanyLogo FROM Jobs WHERE 1=1";
                List<SqlParameter> parameters = new List<SqlParameter>();

                if (!string.IsNullOrEmpty(ddlCategory.SelectedValue))
                {
                    query += " AND Category = @Category";
                    parameters.Add(new SqlParameter("@Category", ddlCategory.SelectedValue));
                }

                if (!string.IsNullOrEmpty(ddlLocation.SelectedValue))
                {
                    query += " AND Location LIKE @Location";
                    parameters.Add(new SqlParameter("@Location", "%" + ddlLocation.SelectedValue + "%"));
                }

                if (!string.IsNullOrEmpty(ddlExperience.SelectedValue))
                {
                    query += " AND Experience = @Experience";
                    parameters.Add(new SqlParameter("@Experience", ddlExperience.SelectedValue));
                }

                List<string> selectedTypes = new List<string>();
                if (chkFullTime.Checked) selectedTypes.Add("Full Time");
                if (chkPartTime.Checked) selectedTypes.Add("Part Time");
                if (chkRemote.Checked) selectedTypes.Add("Remote");
                if (chkFreelance.Checked) selectedTypes.Add("Freelance");

                if (selectedTypes.Count > 0)
                {
                    query += " AND EmploymentType IN (" + string.Join(",", selectedTypes.Select((s, i) => "@Type" + i)) + ")";
                    for (int i = 0; i < selectedTypes.Count; i++)
                    {
                        parameters.Add(new SqlParameter("@Type" + i, selectedTypes[i]));
                    }
                }

                try
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddRange(parameters.ToArray());
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        rptJobs.DataSource = dt;
                        rptJobs.DataBind();

                        
                        NoJobsPanel.Visible = (dt.Rows.Count == 0);
                    }
                }
                catch (Exception ex)
                {
                    
                    System.Diagnostics.Debug.WriteLine($"Error loading jobs: {ex.Message}");
                    
                }
            }
        }


        
        protected void rptJobs_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                
                Button btn = e.CommandSource as Button;
                if (btn != null && !string.IsNullOrEmpty(btn.CommandArgument))
                {
                    string jobId = btn.CommandArgument;

                    Session["SelectedJobID"] = jobId;

                    
                    DataTable companyData = GetCompanyDataByJobId(jobId);

                    if (companyData != null && companyData.Rows.Count > 0)
                    {
                        Session["CompanyData"] = companyData;
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error in rptJobs_ItemCommand: {ex.Message}");
            }

           
            Response.Redirect("Jobdetail.aspx");
        }

        private DataTable GetCompanyDataByJobId(string jobId)
        {
            DataTable companyData = new DataTable();
            string connString = WebConfigurationManager.ConnectionStrings["MyDBConnection"]?.ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                
                string query = @"SELECT C.* 
                        FROM Companies C
                        INNER JOIN Jobs J ON C.CompanyID = J.CompanyID 
                        WHERE J.JobID = @JobID";

                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@JobID", jobId);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(companyData);
                    }
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error fetching company data: {ex.Message}");
                }
            }

            return companyData;
        }

        
    }
}