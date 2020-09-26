using System;
using System.Web;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;

namespace AgricultureAuction
{
    public partial class registerFarmer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");

        string fid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
               string pre = "FRM000";
            Random r = new Random();
            int value = r.Next(10, 10000);
            fid = pre + value;
            FarmerID.Text = fid;
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into farmer values('" + FarmerID.Text + "','" + farmername.Text + "','" + place.Text + "','" + phone.Text + "','" + password.Text + "','" + city.Text + "')";
            cmd.ExecuteNonQuery();
            //sendpassword(phone.Text, "" + fid, farmername.Text);
            farmername.Text = "";
            place.Text = "";
            phone.Text = "";
            city.Text = "";
            place.Text = "";
            password.Text = "";
            Response.Redirect("index.aspx");

        }
        private void sendpassword(String Mobile, String Passsword, String UserID)
        {
            string message = "Hi " + UserID + "Your UserID: "+Passsword+" .(Team APAS)";
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