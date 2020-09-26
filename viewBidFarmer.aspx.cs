using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AgricultureAuction
{
    public partial class viewBidFarmer : System.Web.UI.Page
    {

        string impath = "";

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                string id = Request.QueryString["id"];
                string sdesc = Request.QueryString["dec"];
                string cinfo = Request.QueryString["cropinfo"];
                impath = Request.QueryString["path"];
                FarmerID.Text = id;
                description.Text = sdesc;
                cropInfo.Text = cinfo;
                lblImg.Text = impath;
            }


            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();


        }

        protected void btn_UploadRate_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int i = r.Next(10, 10000);

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into bidrating values('" + i + "','" + FarmerID.Text + "','" + description.Text + "','" + cropInfo.Text + "','" + Rating.Text + "', '"+auth.Text+"','"+baseValue.Text+"',    '" + lblImg.Text + "')";
            cmd.ExecuteNonQuery();
        }
    }
}