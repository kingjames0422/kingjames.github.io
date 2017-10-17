using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Services;
using System.Web.Script.Services;
using System.Text.RegularExpressions;

namespace SMDC_Site
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Attributes.Add("onchange", "javascript:removeErrorText(this)");
            txtEmail.Attributes.Add("onchange", "javascript:removeErrorText(this)");
            txtMobileNum.Attributes.Add("onchange", "javascript:removeErrorText(this)");
            txtProjectName.Attributes.Add("onchange", "javascript:removeErrorText(this)");
            txtMessage.Attributes.Add("onchange", "javascript:removeErrorText(this)");
        }

        [WebMethod]
        public static string submitInquiry(string clientName, string clientEmail, string mobileNum, string projectName, string inquiryMessage) {
            if (clientName != string.Empty && clientEmail != string.Empty && mobileNum != string.Empty && projectName != string.Empty && inquiryMessage != string.Empty)
            {
                ////server side basic check if the format of user's email address is valid.
                bool isValidEmail = false;
                isValidEmail = Regex.IsMatch(clientEmail, @"^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$");
                if (isValidEmail)
                {
                    try
                    {
                        MailMessage mailMessage = new MailMessage();
                        mailMessage.From = new MailAddress(clientEmail, "SMDC Prime Website");
                        mailMessage.To.Add("smdcprimecondoph@gmail.com");
                        mailMessage.Subject = "SMDC Prime - Project Inquiry";
                        mailMessage.Body = "This is an inquiry regarding " + "'" + projectName + "'" + "\n" + "\n" + inquiryMessage + "\n" + "\n" + "From : " + clientName + " / " + mobileNum + "\n" + clientEmail;
                        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                        smtpClient.Credentials = new System.Net.NetworkCredential()
                        {
                            UserName = "smdcprimecondoph@gmail.com",
                            Password = "prime1234"
                        };
                        smtpClient.EnableSsl = true;
                        smtpClient.Send(mailMessage);

                        
                        //https://myaccount.google.com/security
                    }
                    catch
                    {
                        return "Something went wrong and could not send the inquiry. Please try again later.";
                    }
                }
                return ("Your inquiry was sent. Thank you!");
            }
            else
            {
                return "Please supply all the required information.";
            }
        }
    }
}