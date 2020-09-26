using System;
using System.Data.SqlClient;
using System.Data;

namespace AgricultureAuction
{
    public partial class auctions : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from sales";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            allAuctionData.DataSource = dt;
            allAuctionData.DataBind();

        }
    }
}