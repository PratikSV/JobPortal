﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOB_Portal.MainMasterPages
{
	public partial class apply : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void btnOK_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}