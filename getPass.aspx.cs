using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgricultureAuction
{
    public partial class getPass : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                string passs = Request.QueryString["pass"];
                lblPassword.Text = passs;

            }

        }
    }
}