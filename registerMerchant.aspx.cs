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
    public partial class registerMerchant : System.Web.UI.Page
    {

        string mid;

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            string pre = "MID000";
            Random r = new Random();
            int id = r.Next(10,10000);

            mid = pre + id;

            merchantID.Text = mid;

        }

        protected void btn_Merchant_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into merchants values('" + merchantID.Text + "','" + merchantname.Text + "','" + name.Text + "','" + email.Text + "','" + password.Text + "','" + phone.Text + "')";
            cmd.ExecuteNonQuery();

            //sendpassword(phone.Text, "" + mid, merchantname.Text);

            merchantID.Text = "";
            merchantname.Text = "";
            name.Text = "";
            email.Text = "";
            phone.Text = "";
            password.Text = "";
        }


        private void sendpassword(String Mobile, String Passsword, String UserID)
        {

            string message = "Hi " + UserID + "Your UserID: " + Passsword + " .(Team APAS)";

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