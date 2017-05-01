using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class generic : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Alon\Documents\Visual Studio 2012\WebSites\Project\App_Data\Database.mdf;Integrated Security=True");

    private string topmessage;
    public string TopMessage { get { return topmessage; } }
    private string menubutton;
    public string MenuButton { get { return menubutton; } }
    private string polltitle;
    public string PollTitle { get { return polltitle; } }
    private string creator;
    public string Creator { get { return creator; } }
    private string[] questions;
    public string[] Questions { get { return questions; } }
    private string[,] answers;
    public string[,] Answers { get { return answers; } } // [question no.][answer no.] = 8x4
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        // Identification message on top bar
        if ((string)(Session["logged"]) == "yes")
        {
            topmessage = String.Format("POLLBOOK | Hello {0} | <a href=\"profile.aspx\">Profile</a> | <a href=\"logout.aspx\">Log Out</a>", Session["user"]);
        }
        else
        {
            topmessage = "POLLBOOK | Hello Guest | <a href=\"login.aspx\">Login</a> | <a href=\"register.aspx\">Create Account</a>";
        }
        // End message

        // Menu buttons : profile+create or login+register
        if ((string)(Session["logged"]) == "yes")
        {
            menubutton = "<li><a href=\"profile.aspx\">Profile</a></li><li><a href=\"create.aspx\">Create a Poll</a></li>";
        }
        else
        {
            menubutton = "<li><a href=\"login.aspx\">Login</a></li><li><a href=\"register.aspx\">Register</a></li>";
        }
        // End menu buttons

        // Identify poll
        string idstr = Request.QueryString["id"];
        int id;
        if (!int.TryParse(idstr, out id))
        {
            Response.Redirect("whoops.aspx");
        }
        else
        {
            questions = new string[8];
            answers = new string[8,4];

            // Retrieve poll from pollData
            string queryP = "SELECT * FROM pollData WHERE Id=@Id";
            SqlCommand cmdP = new SqlCommand(queryP, con);
            cmdP.Parameters.Add(new SqlParameter("@Id", id));
            SqlDataReader readerP = cmdP.ExecuteReader();

            if (!readerP.Read())
            {
                Response.Redirect("whoops.aspx");
            }
            else
            {
                creator = (string)readerP["creator"];
                polltitle = (string)readerP["title"];
                readerP.Close();

                // Retrieve questions

                for (int q = 1; q <= 8; q++)
                {
                    string queryQ = "SELECT * FROM questionData WHERE fatherId=@Id AND number=@Number";
                    SqlCommand cmdQ = new SqlCommand(queryQ, con);
                    cmdQ.Parameters.Add(new SqlParameter("@Id", id));
                    cmdQ.Parameters.Add(new SqlParameter("@Number", q));
                    SqlDataReader readerQ = cmdQ.ExecuteReader();
                    readerQ.Read();

                    questions[q-1] = (string)readerQ["question"];
                    for (int a = 1; a <= 4; a++)
                    {
                        answers[q-1, a-1] = (string)readerQ["answer" + a.ToString()];
                    }
                    readerQ.Close();
                }
                
            }
        }
        // end pollid
        con.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        int ans1 = retrieveChoice(rbA11, rbA12, rbA13, rbA14);
        int ans2 = retrieveChoice(rbA21, rbA22, rbA23, rbA24);
        int ans3 = retrieveChoice(rbA31, rbA32, rbA33, rbA34);
        int ans4 = retrieveChoice(rbA41, rbA42, rbA43, rbA44);
        int ans5 = retrieveChoice(rbA51, rbA52, rbA53, rbA54);
        int ans6 = retrieveChoice(rbA61, rbA62, rbA63, rbA64);
        int ans7 = retrieveChoice(rbA71, rbA72, rbA73, rbA74);
        int ans8 = retrieveChoice(rbA81, rbA82, rbA83, rbA84);

        if (ans1 > 0 && ans2 > 0 && ans3 > 0 && ans4 > 0 && ans5 > 0 && ans6 > 0 && ans7 > 0 && ans8 > 0)
        {


            string query1 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans1);
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd1.Parameters.Add(new SqlParameter("@Number", 1));
            cmd1.ExecuteNonQuery();

            string query2 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans2);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd2.Parameters.Add(new SqlParameter("@Number", 2));
            cmd2.ExecuteNonQuery();

            string query3 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans3);
            SqlCommand cmd3 = new SqlCommand(query3, con);
            cmd3.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd3.Parameters.Add(new SqlParameter("@Number", 3));
            cmd3.ExecuteNonQuery();

            string query4 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans4);
            SqlCommand cmd4 = new SqlCommand(query4, con);
            cmd4.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd4.Parameters.Add(new SqlParameter("@Number", 4));
            cmd4.ExecuteNonQuery();

            string query5 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans5);
            SqlCommand cmd5 = new SqlCommand(query5, con);
            cmd5.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd5.Parameters.Add(new SqlParameter("@Number", 5));
            cmd5.ExecuteNonQuery();

            string query6 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans6);
            SqlCommand cmd6 = new SqlCommand(query6, con);
            cmd6.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd6.Parameters.Add(new SqlParameter("@Number", 6));
            cmd6.ExecuteNonQuery();

            string query7 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans7);
            SqlCommand cmd7 = new SqlCommand(query7, con);
            cmd7.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd7.Parameters.Add(new SqlParameter("@Number", 7));
            cmd7.ExecuteNonQuery();

            string query8 = String.Format("UPDATE questionData SET result{0} = result{0} + 1 WHERE fatherId=@Id AND number=@Number", ans8);
            SqlCommand cmd8 = new SqlCommand(query8, con);
            cmd8.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd8.Parameters.Add(new SqlParameter("@Number", 8));
            cmd8.ExecuteNonQuery();

            string query = "UPDATE pollData SET count = count + 1 WHERE Id=@Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@Id", Request.QueryString["id"]));
            cmd.ExecuteNonQuery();

            Response.Write("Successfully filled form!");
            Response.Redirect("browse.aspx");
        }
        else
        {
            Response.Write("Please fill all fields.");
        }
    }

    public static int retrieveChoice(RadioButton r1, RadioButton r2, RadioButton r3, RadioButton r4)
    {
        if (r1.Checked)
            return 1;
        else if (r2.Checked)
            return 2;
        else if (r3.Checked)
            return 3;
        else if (r4.Checked)
            return 4;
        else
            return -1;
    }
}