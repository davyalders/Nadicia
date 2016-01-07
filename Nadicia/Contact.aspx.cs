using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nadicia.Models
{
    public partial class Contact : System.Web.UI.Page
    {

        Boolean succes = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (tbBericht.Text.Length > 500)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail();
            if (succes)
            {
                Response.Redirect("Succes.aspx");
            }
                
        }

        public Boolean SendEmail()
        {
            

            MailMessage message = new MailMessage();
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            var sb = new StringBuilder();
            sb.Append("Je hebt een bericht van: " + tbNaam.Text);
            sb.AppendLine("<br> </br>");
            sb.Append("Email: " +  tbEmail.Text);
            sb.AppendLine("<br> </br>");
            sb.AppendLine("<br> </br>");
            sb.Append(" Bericht: " + tbBericht.Text);

            try
            {
                message.From = new MailAddress("valkerijnadicia@gmail.com");
                message.To.Add("Davyalders@gmail.com");
                message.Subject = "Bericht van de site";
                message.Body = sb.ToString();
                message.IsBodyHtml = true;
                client.EnableSsl = true;
                client.UseDefaultCredentials = true;
                client.Credentials = new System.Net.NetworkCredential("valkerijnadicia@gmail.com", "nadicia123");
                client.Send(message);
                succes = true;
            }
            catch
            {
                succes = false;
            }


            return succes;


        }
    }
}