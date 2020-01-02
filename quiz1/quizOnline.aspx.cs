using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quiz1
{
    
    public partial class quizOnline : System.Web.UI.Page
    {
        int score = 0; 
        
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!Page.IsPostBack)
            {
                string mainconn = ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "select * from tblQuestions";
                sqlconn.Open();
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                SqlDataAdapter sr = new SqlDataAdapter(sqlcomm);
                DataTable dt = new DataTable();
                sr.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                sqlconn.Close();          
                
            }         
          
        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioOption1");
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioOption2");
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioOption3");
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioOption4");

                if (rb1.Checked == false&& rb2.Checked == false && rb3.Checked == false && rb4.Checked == false)
                {

                        Label UserSelectAns = (Label)ri.FindControl("LabSelectUserOpt");
                        UserSelectAns.Text = "missing!!";
                        UserSelectAns.ForeColor = System.Drawing.Color.Blue;
                        
                }
                   
                
            }

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioOption1");
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioOption2");
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioOption3");
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioOption4");

                Label labCorrAns = (Label)ri.FindControl("LabCorrectAns");
                //labCorrAns.Visible = true;
                if (rb1.Checked == true)
                {
                    rb1.Enabled = false;
                    rb2.Enabled = false;
                    rb3.Enabled = false;
                    rb4.Enabled = false;


                    if (rb1.Text.Equals(labCorrAns.Text))
                    {
                        Label UserSelectAns = (Label)ri.FindControl("LabSelectUserOpt");
                        UserSelectAns.Text = "<b> " + rb1.Text.ToString() + "</b>...correct!!";
                        UserSelectAns.ForeColor = System.Drawing.Color.Green;
                        score = score + 1;
                    }
                    else
                    {
                        Label WrongAns = (Label)ri.FindControl("LabSelectUserOpt");
                        WrongAns.Text = "the select answer <b> " + rb1.Text.ToString() + "</b> is wrong!!";
                        WrongAns.ForeColor = System.Drawing.Color.Red;
                        score = score + 0;
                    }
                }
            }

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioOption1");
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioOption2");
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioOption3");
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioOption4"); Label labCorrAns = (Label)ri.FindControl("LabCorrectAns");
                //labCorrAns.Visible = true;
                if (rb2.Checked == true)
                {
                    rb1.Enabled = false;
                    rb2.Enabled = false;
                    rb3.Enabled = false;
                    rb4.Enabled = false;
                    if (rb2.Text.Equals(labCorrAns.Text))
                    {
                        Label UserSelectAns = (Label)ri.FindControl("LabSelectUserOpt");
                        UserSelectAns.Text = "<b> " + rb2.Text.ToString() + "</b>...correct!!";
                        UserSelectAns.ForeColor = System.Drawing.Color.Green;
                        score = score + 1;
                    }
                    else
                    {
                        Label WrongAns = (Label)ri.FindControl("LabSelectUserOpt");
                        WrongAns.Text = "the select answer <b> " + rb2.Text.ToString() + "</b> is wrong!!";
                        WrongAns.ForeColor = System.Drawing.Color.Red;
                        score = score + 0;
                    }
                }
            }

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioOption1");
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioOption2");
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioOption3");
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioOption4"); Label labCorrAns = (Label)ri.FindControl("LabCorrectAns");
                //labCorrAns.Visible = true;
                if (rb3.Checked == true)
                {
                    rb1.Enabled = false;
                    rb2.Enabled = false;
                    rb3.Enabled = false;
                    rb4.Enabled = false;
                    if (rb3.Text.Equals(labCorrAns.Text))
                    {
                        Label UserSelectAns = (Label)ri.FindControl("LabSelectUserOpt");
                        UserSelectAns.Text = "<b> " + rb3.Text.ToString() + "</b>...correct!!";
                        UserSelectAns.ForeColor = System.Drawing.Color.Green;
                        score = score + 1;
                    }
                    else
                    {
                        Label WrongAns = (Label)ri.FindControl("LabSelectUserOpt");
                        WrongAns.Text = "the select answer <b> " + rb3.Text.ToString() + "</b> is wrong!!";
                        WrongAns.ForeColor = System.Drawing.Color.Red;
                        score = score + 0;
                    }
                }
            }

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioOption1");
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioOption2");
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioOption3");
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioOption4"); Label labCorrAns = (Label)ri.FindControl("LabCorrectAns");
                //labCorrAns.Visible = true;
                if (rb4.Checked == true)
                {
                    rb1.Enabled = false;
                    rb2.Enabled = false;
                    rb3.Enabled = false;
                    rb4.Enabled = false;
                    if (rb4.Text.Equals(labCorrAns.Text))
                    {
                        Label UserSelectAns = (Label)ri.FindControl("LabSelectUserOpt");
                        UserSelectAns.Text = "<b> " + rb4.Text.ToString() + "</b>...correct!!";
                        UserSelectAns.ForeColor = System.Drawing.Color.Green;
                        score = score + 1;
                    }
                    else
                    {
                        Label WrongAns = (Label)ri.FindControl("LabSelectUserOpt");
                        WrongAns.Text = "the select answer <b> " + rb4.Text.ToString() + "</b> is wrong!!";
                        WrongAns.ForeColor = System.Drawing.Color.Red;
                        score = score + 0;
                    }
                }
                
            }
            LabelScore.Text = "the total score is: " + score.ToString();
            table1.Visible = true;
        }
       
        protected void reload_Click1(object sender, EventArgs e)
        {
            Response.Redirect("QuizOnline.aspx");
        }
        
    }
}