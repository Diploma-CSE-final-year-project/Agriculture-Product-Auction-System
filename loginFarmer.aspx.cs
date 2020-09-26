using System;
using System.Data.SqlClient;
using System.Data;
namespace AgricultureAuction
{
    public partial class loginFarmer : System.Web.UI.Page
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

        protected void btnLoginFarmer_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string query = "select count(1) from farmer where id= @phone and password = @password";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            sqlcmd.Parameters.AddWithValue("@phone", farmerid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", farmerpass.Text.Trim());
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count > 0)
                    {
                    Session["username"] = farmerid.Text;
                    Response.Redirect("farmerPanel.aspx");
                    }
            else
            {
                Response.Redirect("error.aspx");
            }

        }
    }
}