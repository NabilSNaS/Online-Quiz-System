using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views.Admin
{
    public partial class Quiz : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showQuiz();
        }
        private void showQuiz()
        {
            string Query = "select Qid as QuestionID, QName as QuestionType, QQtNbr as QuestionNumber,QMarksbyAns as AnsNumber from QuizTbl";
            QuizList.DataSource = Con.GetData(Query);
            QuizList.DataBind();
        }
        protected void SaveItm_Click(object sender, EventArgs e)
        {
            try
            {
                string CName = QuizNameTb.Value;
                string Quest = QuestionTb.Value;
                string Ans = AnsByQsnTb.Value;
                string Query = "insert into QuizTbl values('{0}','{1}','{2}')";
                Query = string.Format(Query, CName, Quest, Ans);
                Con.SetData(Query);
                showQuiz();
                ErrMsg.InnerText = "Quiz Successfully Added!";
                QuizNameTb.Value = "";
                QuestionTb.Value = "";
                AnsByQsnTb.Value = "";


            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
           
        }

        protected void EditItm_Click(object sender, EventArgs e)
        {

            try
            {
                string CName = QuizNameTb.Value;
                string Quest = QuestionTb.Value;
                string Ans = AnsByQsnTb.Value;
                string Query = "update QuizTbl set QName = '{0}',QQtNbr = '{1}',QMarksbyAns = '{2}' where Qid = '{3}'";
                Query = string.Format(Query, CName, Quest, Ans, QuizList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                showQuiz();
                ErrMsg.InnerText = "Quiz Successfully Updated!";
                QuizNameTb.Value ="";
                QuestionTb.Value="";
                AnsByQsnTb.Value="";

            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void QuizList_SelectedIndexChanged(object sender, EventArgs e)
        {

            QuizNameTb.Value = QuizList.SelectedRow.Cells[2].Text;
            QuestionTb.Value = QuizList.SelectedRow.Cells[3].Text;
            AnsByQsnTb.Value = QuizList.SelectedRow.Cells[4].Text;
        }

        protected void DeleteItm_Click(object sender, EventArgs e)
        {
            try
            {
                string CName = QuizNameTb.Value;
                string Quest = QuestionTb.Value;
                string Ans = AnsByQsnTb.Value;
                string Query = "delete from QuizTbl where Qid = '{0}'";
                Query = string.Format(Query, QuizList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                showQuiz();
                ErrMsg.InnerText = "Quiz Successfully Deleted!!!";
                QuizNameTb.Value = "";
                QuestionTb.Value = "";
                AnsByQsnTb.Value = "";

            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }
        }
       
    }
}