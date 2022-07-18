using Online_Quize_System.Views.Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quize_System.Views.Candidate
{
    public partial class Test : System.Web.UI.Page
    {
        Models.Functions Con;
        static int i = 0;
        int Quiz = Home.QId;
      
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
           
           
            if (!IsPostBack)
            {
                
                GetQuestions();
                i = 0;
              
            }
        }

        private void InsertTest()
        {
            try
            {
                int Candidate = Login.CId;
                int Quiz = Home.QId;
               
                string Query = "insert into TestTbl values('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, Candidate, Quiz,System.DateTime.Today.Date,score);
                Con.SetData(Query);
               
              
             


            }
            catch (Exception ex)
            {

                ErrMsg.InnerText = ex.Message;
            }

        }
        
        private void NextQuestions()
        {
            string Query = "select * from QuestionTbl where Quiz = {0}";
            Query = string.Format(Query, Quiz);
            DataTable Questions = Con.GetData(Query);
            int QuestNum = Questions.Rows.Count;
          
            if (i < QuestNum)
            {
                if (Ans1Rb.Checked || Ans2Rb.Checked || Ans3Rb.Checked || Ans4Rb.Checked)
                {
                    QuestTb.InnerText = Questions.Rows[i][2].ToString();

                    Ans1Lbl.InnerText = Questions.Rows[i][3].ToString();
                    Ans2Lbl.InnerText = Questions.Rows[i][4].ToString();
                    Ans3Lbl.InnerText = Questions.Rows[i][5].ToString();
                    Ans4Lbl.InnerText = Questions.Rows[i][6].ToString();
                    correct();
                    if (c == Convert.ToInt32(Questions.Rows[i][7].ToString()))
                    {
                        score = score + 1;
                        
                        i++;
                        
                    }
                    else
                    {
                        i++;
                    }
                  
                   

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('No Selected Answer!')", true);
                }
               
            }

            else
            {
                InfoMsg.InnerText = " You got " + score + " out of " + QuestNum;
                InsertTest();
                
                QuestNum = 0;
                
            }
            
            
        }

          
        private void GetQuestions()
        {
            string Query = "select * from QuestionTbl";
            DataTable Questions = Con.GetData(Query);
            int QuestNum = Questions.Rows.Count;
            
            if (i < QuestNum)
            {
                QuestTb.InnerText = Questions.Rows[i][2].ToString();

                Ans1Lbl.InnerText = Questions.Rows[i][3].ToString();
                Ans2Lbl.InnerText = Questions.Rows[i][4].ToString();
                Ans3Lbl.InnerText = Questions.Rows[i][5].ToString();
                Ans4Lbl.InnerText = Questions.Rows[i][6].ToString();
                i++;
            }
            
           
        }
        int c;
        static int score = 0;
       
       
        private void correct()
        {
            if (Ans1Rb.Checked)
            {
                c = 1;
            }
            else if(Ans2Rb.Checked)
            {
                c = 2;
            }
            else if (Ans3Rb.Checked)
            {
                c = 3;
            }
            else if (Ans4Rb.Checked)
            {
                c = 4;
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            NextQuestions();

        }
    }
}