using System;
using System.Data.SqlClient;

namespace AgricultureAuction
{
    public partial class index : System.Web.UI.Page
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

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandText = "insert into farmer values('"+1+"','"+farmername.Text+"','"+place.Text+"','"+phone.Text+"','"+city.Text+"','"+place.Text+"')";
            cmd.ExecuteNonQuery();
        }

    }
}