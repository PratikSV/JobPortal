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

        protected void ddlExperience_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlExperience.SelectedValue== "Fresher") 
            {
                txtCurrentJob.Visible = false;
            }
            else
            {
                txtCurrentJob.Visible = true;
            }
        }
    }
}