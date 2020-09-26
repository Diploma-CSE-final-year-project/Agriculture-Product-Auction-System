using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace AgricultureAuction
{
    public partial class uploadDataFromFarmer : System.Web.UI.Page
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

        protected void btn_UploadData_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("uploads/");

            if (uploadFarmer.HasFile)
            {
                string ext = Path.GetExtension(uploadFarmer.FileName);
                if(ext == ".jpg" || ext == ".png")
                {
                    Random r = new Random();

                    int num = r.Next(10, 10000);

                    uploadFarmer.SaveAs(path + num+uploadFarmer.FileName);
                    string name = "uploads/" + num+uploadFarmer.FileName;
                    string query = "insert into farmeruploads values('"+num+"', '" + FarmerID.Text + "','" + farmername.Text + "','" + description.Text + "','" + cropInfo.Text + "','" + name + "')";

                    SqlCommand cmd = new SqlCommand(query, con);
                    //con.Open();
                    cmd.ExecuteNonQuery();

                    FarmerID.Text = "";
                    farmername.Text = "";
                    description.Text = "";
                    cropInfo.Text = "";

                }
                else
                {
                    labelFile.Text = "You have to upload jpg or png";
                }
            }
            else
            {

            }
        }
    }
}