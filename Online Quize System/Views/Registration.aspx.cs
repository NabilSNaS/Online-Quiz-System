using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views
{
    public partial class Registration : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string CName = CNameTb.Value;
                string CEmail = CEmailTb.Value;
                string CPass = PasswordTb.Value;
                string College = CollegeTb.Value;
                string Query = "insert into CandidateTbl values ('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, CName, CEmail, CPass, College);
                Con.SetData(Query);
                ErrMsg.InnerText = "Successfully Added......Login Now....";

            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}