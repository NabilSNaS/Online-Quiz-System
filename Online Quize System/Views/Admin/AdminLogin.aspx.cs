using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views.Admin
{     
    public partial class Admin : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
              
                if (EmailTb.Value=="admin@gmail.com" && passwordTb.Value=="admin")
                {
                    Response.Redirect("ViewCandidates.aspx");
                }
                else
                {
                    ErrMsg.InnerText = "Wrong Credentials!!!";
                }
            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
        }
    }
        }
    