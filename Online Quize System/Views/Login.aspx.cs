using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        public static int CId;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "select CandId,CandName,CandEmail,CandCollege from CandidateTbl where CandEmail='{0}' and CandPass='{1}'";
                Query = string.Format(Query, CEmailTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                 
                    ErrMsg.InnerText = "Wrong Credentials!!!";
                }
                else
                {
                       CId = Convert.ToInt32(dt.Rows[0][0].ToString());
                   Response.Redirect("Candidate/Home.aspx");
                }
            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}