using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views.Admin
{
    public partial class ViewCandidates : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showCandidates();
        }
        private void showCandidates()
        {
            string Query = "select CandId as ID, CandName as Name, CandEmail as Email,CandPass as Password,CandCollege as College from CandidateTbl";
            CandidatesList.DataSource = Con.GetData(Query);
            CandidatesList.DataBind();
        }

       
    }
}