using System;
using System.Web;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace AgricultureAuction
{
    public partial class sellMyProduct : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LSOB7LC\SQLEXPRESS;Initial Catalog=agri;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (!this.IsPostBack)
            {
                string id = Request.QueryString["id"];
                string mid = Request.QueryString["mid"];
                string name = Request.QueryString["name"];
                string amt = Request.QueryString["amt"];
                string phone = Request.QueryString["phone"];

                Random r = new Random();
                int val = r.Next(10, 100000);
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into sales values('"+val+"',   '" + id + "','" + mid + "','" + name + "','" + phone + "','" + amt + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "delete from farmeruploads where farmerid = '"+id+"'";
                cmd.ExecuteNonQuery();
                string msg = "\t\t\tAPAS\t\t\t\n\n" + "******************************************************"+"ID: \t\t"+id+"\n"+"Merchant ID\t\t\n"+mid+"Phone:\t\t"+amt+"\n";

                try
                {
                    Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
                    PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    Paragraph Text = new Paragraph(msg);
                    pdfDoc.Add(Text);
                    pdfWriter.CloseStream = false;
                    pdfDoc.Close();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Example.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                }
                catch (Exception ex)
                { Response.Write(ex.Message); }
            }
        }
    }
}