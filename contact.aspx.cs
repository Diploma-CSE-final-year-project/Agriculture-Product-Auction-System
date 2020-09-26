using System;
using System.Net.Mail;


namespace AgricultureAuction
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMsg_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("apas.enquiry@gmail.com");
            //mail.To.Add(TextBox3.Text);
            mail.From = new MailAddress("apas.enquiry@gmail.com", "Enquiry");
            mail.Subject = "Enquiry";


            mail.Body = "Name :" + name.Text + Environment.NewLine + Environment.NewLine +
                            "Email :" + email.Text + Environment.NewLine + Environment.NewLine +
                            "Phone :" + phone.Text + Environment.NewLine + Environment.NewLine +
                            "Message:" + msg.Text + Environment.NewLine + Environment.NewLine;


            mail.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("apas.enquiry@gmail.com", "apas.2020");
            //smpt.UseDefaultCredentials = true;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Message Sent Successfully!');", true);
            Session["CheckRefresh"] = Server.UrlDecode(System.DateTime.Now.ToString());
            Response.Redirect("contact.aspx");


        }
    }
}