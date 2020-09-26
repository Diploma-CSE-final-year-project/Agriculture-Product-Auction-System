using System;
using System.Data.SqlClient;


namespace AgricultureAuction
{
    public partial class admin : System.Web.UI.Page
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

        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandText = "select count(1) from admin where adminid = '"+adminid.Text+"' and password = '"+password.Text+"'";
            //cmd.ExecuteNonQuery();



            string query = "select count(1) from admin where adminid = @adminid and password = @password";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            sqlcmd.Parameters.AddWithValue("@adminid", adminid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", adminpassword.Text.Trim());
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

            if(count > 1)
            {
                Session["username"] = adminid.Text.Trim();
                Response.Redirect("adminPanel.aspx");
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}