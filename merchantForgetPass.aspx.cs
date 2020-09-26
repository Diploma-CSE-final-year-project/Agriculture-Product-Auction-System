using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;



namespace AgricultureAuction
{
    public partial class merchantForgetPass : System.Web.UI.Page


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

        protected void btnGetMerchantPass_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            string query = "select * from merchants where name='" + name.Text + "' and phone = '" + phone.Text + "'";
            SqlCommand sqlcmd = new SqlCommand(query, con);

            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                sendpassword(phone.Text, "" + ds.Tables[0].Rows[0]["password"], name.Text);
                //Response.Redirect("getPass.aspx?pass=" + ds.Tables[0].Rows[0]["password"]);
            }
            else
            {
                Response.Redirect("error.aspx");
            }


        }


        private void sendpassword(String Mobile, String Passsword, String UserID)
        {

            string message = "Hi " + UserID + " , Your Password is " + Passsword + " .(Team APAS)";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "8FZkiXtMiOA-FyfVqoBMZ3jZvlas2pCIN52npLLEp8"},
                {"numbers" , Mobile},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                string mobilelast = "*******" + Mobile.Substring(8);
                //Label1.Text = "Your Password Has Been Sent to Registered Mobile Number " + mobilelast;
            }
        }
    }
}