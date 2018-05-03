using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Assignment
{
    public partial class contactUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnsendemail_Click(object sender, EventArgs e)
        {

            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("smartwatch151@gmail.com", "smartwatch151@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtbody.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("smartwatch151@gmail.com", "wolfheart88");
            smtpClient.Credentials = credentials;
           

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";

            }

        }
    }
}
    