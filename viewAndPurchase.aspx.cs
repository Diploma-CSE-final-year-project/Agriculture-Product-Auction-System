using System;
using System.Data.SqlClient;
namespace AgricultureAuction
{
    public partial class viewAndPurchase : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string id = Request.QueryString["id"];
                //string sdesc = Request.QueryString["dec"];
                //string cinfo = Request.QueryString["cropinfo"];
                //impath = Request.QueryString["path"];
                farmerid.Text = id;
            }
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }
        protected void btn_Purchase_Click1(object sender, EventArgs e)
        {
            Random r = new Random();
            int val = r.Next(10, 10000);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into purchase values('" + val + "','" + farmerid.Text + "','" + merchantid.Text + "','" + merchantname.Text + "','" + phone.Text + "','" + amount.Text + "')";
            cmd.ExecuteNonQuery();
            farmerid.Text = "";
            merchantname.Text = "";
            merchantid.Text = "";
            phone.Text = "";
            amount.Text = "";
        }
    }
}