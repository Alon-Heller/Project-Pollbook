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
    private string[] questions;
    public string[] Questions { get { return questions; } }
    private string[,] answers;
    public string[,] Answers { get { return answers; } } // [question no.][answer no.] = 8x4
    private string[,] amounts;
    public string[,] Amounts { get { return amounts; } } // [q-1,a-1] = no. of people who voted for answer a in question q (+ %representation)
    private int count;
    public int Count { get { return count; } }

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

        //Kick guests to whoops.aspx

        if (Session["logged"] != "yes")
            Response.Redirect("whoops.aspx");

        //end kick guests


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
            answers = new string[8, 4];
            amounts = new string[8, 4];

            // Retrieve poll from pollData
            string queryP = "SELECT * FROM pollData WHERE Id=@Id AND creator=@Creator";
            SqlCommand cmdP = new SqlCommand(queryP, con);
            cmdP.Parameters.Add(new SqlParameter("@Id", id));
            cmdP.Parameters.Add(new SqlParameter("@Creator", Session["user"]));
            SqlDataReader readerP = cmdP.ExecuteReader();

            if (!readerP.Read())
            {
                Response.Redirect("whoops.aspx");
            }
            else
            {
                polltitle = (string)readerP["title"];
                count = (int)readerP["count"];
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
                        if (count == 0)
                            amounts[q - 1, a - 1] = "0 votes";
                        else
                            amounts[q - 1, a - 1] = String.Format("{0} votes ({1}%)", (int)readerQ["result" + a.ToString()], ((int)readerQ["result" + a.ToString()]*100)/count);
                    }
                    readerQ.Close();
                }
                
            }
        }
        // end pollid
        con.Close();
    }
}