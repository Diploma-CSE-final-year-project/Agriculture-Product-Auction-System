using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace AgricultureAuction
{
    public partial class viewPurchases : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            string fid = Session["username"].ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from purchase where farmerid = '"+fid+"' ";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            allPurchaseData.DataSource = dt;
            allPurchaseData.DataBind();


        }
    }
}