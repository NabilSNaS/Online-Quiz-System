﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views.Candidate
{
    public partial class Home : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                GetQuiz();

            }
           
        }
        public static string Quiz = "";
        public static int QId;
        private void GetQuiz()
        {
            string Query = "select * from QuizTbl";


            QuizTb.DataTextField = Con.GetData(Query).Columns["QName"].ToString();
            QuizTb.DataValueField = Con.GetData(Query).Columns["Qid"].ToString();

            QuizTb.DataSource = Con.GetData(Query);


            QuizTb.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Quiz = QuizTb.SelectedItem.ToString();
            QId = Convert.ToInt32(QuizTb.SelectedValue.ToString());
            Response.Redirect("Test.aspx");
        }
    }
}