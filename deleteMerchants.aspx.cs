using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace AgricultureAuction
{
    public partial class deleteMerchants : System.Web.UI.Page
    {


        string impath = "";

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (!this.IsPostBack)
            {
                string id = Request.QueryString["id"];
                string query = "delete from merchants where merid = '" + id + "'";
                SqlCommand sqlcmd = new SqlCommand(query, con);
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

                if (count > 1)
                {
                    Response.Redirect("viewMerchants.aspx");
                }
                else
                {
                    Response.Redirect("viewMerchants.aspx");
                }

            }
        }
    }
}