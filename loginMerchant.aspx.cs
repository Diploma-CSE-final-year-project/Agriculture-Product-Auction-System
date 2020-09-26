using System;
using System.Data.SqlClient;
namespace AgricultureAuction
{
    public partial class loginMerchant : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }
        protected void btnLoginMerchant_Click(object sender, EventArgs e)
        {
            string query = "select count(1) from merchants where phone= @phone and password = @password";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            sqlcmd.Parameters.AddWithValue("@phone", merchantid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", merchantpass.Text.Trim());
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

            if (count > 0)
            {
                Session["username"] = merchantid.Text.Trim();
                Response.Redirect("merchantPanel.aspx");
            }
            else
            {
                Response.Redirect("error.aspx");
            }


        }
    }
}