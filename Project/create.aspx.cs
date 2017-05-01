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
    protected void Page_Load(object sender, EventArgs e)
    {
        // User only page redirect
        if ((string)(Session["logged"]) != "yes")
            Response.Redirect("login.aspx");
        // End user-only

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
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        con.Open();

        // Add poll to pollData

        string query = "INSERT INTO pollData(title,date,creator,count) OUTPUT INSERTED.Id VALUES (@title, @date, @creator,0)";
        SqlCommand cmd = new SqlCommand(query, con);

        cmd.Parameters.Add(new SqlParameter("@title", txtTitle.Text));
        cmd.Parameters.Add(new SqlParameter("@date", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@creator", Session["user"]));

        SqlDataReader reader = cmd.ExecuteReader();

        // Add each question to questionData

        if (reader.Read()) // Reads ID of poll we had just submitted
        {
            int fatherID = (int)reader[0];
            reader.Close();
            string query1 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd1.Parameters.Add(new SqlParameter("@number", 1));
            cmd1.Parameters.Add(new SqlParameter("@question", txtQ1.Text));
            cmd1.Parameters.Add(new SqlParameter("@answer1", txtA11.Text));
            cmd1.Parameters.Add(new SqlParameter("@answer2", txtA12.Text));
            cmd1.Parameters.Add(new SqlParameter("@answer3", txtA13.Text));
            cmd1.Parameters.Add(new SqlParameter("@answer4", txtA14.Text));
            cmd1.ExecuteNonQuery();

            string query2 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd2.Parameters.Add(new SqlParameter("@number", 2));
            cmd2.Parameters.Add(new SqlParameter("@question", txtQ2.Text));
            cmd2.Parameters.Add(new SqlParameter("@answer1", txtA21.Text));
            cmd2.Parameters.Add(new SqlParameter("@answer2", txtA22.Text));
            cmd2.Parameters.Add(new SqlParameter("@answer3", txtA23.Text));
            cmd2.Parameters.Add(new SqlParameter("@answer4", txtA24.Text));
            cmd2.ExecuteNonQuery();

            string query3 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            cmd3.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd3.Parameters.Add(new SqlParameter("@number", 3));
            cmd3.Parameters.Add(new SqlParameter("@question", txtQ3.Text));
            cmd3.Parameters.Add(new SqlParameter("@answer1", txtA31.Text));
            cmd3.Parameters.Add(new SqlParameter("@answer2", txtA32.Text));
            cmd3.Parameters.Add(new SqlParameter("@answer3", txtA33.Text));
            cmd3.Parameters.Add(new SqlParameter("@answer4", txtA34.Text));
            cmd3.ExecuteNonQuery();

            string query4 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd4 = new SqlCommand(query4, con);
            cmd4.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd4.Parameters.Add(new SqlParameter("@number", 4));
            cmd4.Parameters.Add(new SqlParameter("@question", txtQ4.Text));
            cmd4.Parameters.Add(new SqlParameter("@answer1", txtA41.Text));
            cmd4.Parameters.Add(new SqlParameter("@answer2", txtA42.Text));
            cmd4.Parameters.Add(new SqlParameter("@answer3", txtA43.Text));
            cmd4.Parameters.Add(new SqlParameter("@answer4", txtA44.Text));
            cmd4.ExecuteNonQuery();

            string query5 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd5 = new SqlCommand(query5, con);
            cmd5.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd5.Parameters.Add(new SqlParameter("@number", 5));
            cmd5.Parameters.Add(new SqlParameter("@question", txtQ5.Text));
            cmd5.Parameters.Add(new SqlParameter("@answer1", txtA51.Text));
            cmd5.Parameters.Add(new SqlParameter("@answer2", txtA52.Text));
            cmd5.Parameters.Add(new SqlParameter("@answer3", txtA53.Text));
            cmd5.Parameters.Add(new SqlParameter("@answer4", txtA54.Text));
            cmd5.ExecuteNonQuery();

            string query6 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd6 = new SqlCommand(query6, con);
            cmd6.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd6.Parameters.Add(new SqlParameter("@number", 6));
            cmd6.Parameters.Add(new SqlParameter("@question", txtQ6.Text));
            cmd6.Parameters.Add(new SqlParameter("@answer1", txtA61.Text));
            cmd6.Parameters.Add(new SqlParameter("@answer2", txtA62.Text));
            cmd6.Parameters.Add(new SqlParameter("@answer3", txtA63.Text));
            cmd6.Parameters.Add(new SqlParameter("@answer4", txtA64.Text));
            cmd6.ExecuteNonQuery();

            string query7 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd7 = new SqlCommand(query7, con);
            cmd7.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd7.Parameters.Add(new SqlParameter("@number", 7));
            cmd7.Parameters.Add(new SqlParameter("@question", txtQ7.Text));
            cmd7.Parameters.Add(new SqlParameter("@answer1", txtA71.Text));
            cmd7.Parameters.Add(new SqlParameter("@answer2", txtA72.Text));
            cmd7.Parameters.Add(new SqlParameter("@answer3", txtA73.Text));
            cmd7.Parameters.Add(new SqlParameter("@answer4", txtA74.Text));
            cmd7.ExecuteNonQuery();

            string query8 = "INSERT INTO questionData(fatherId,number,question,answer1,answer2,answer3,answer4,result1,result2,result3,result4) VALUES (@fatherId,@number,@question,@answer1,@answer2,@answer3,@answer4,0,0,0,0)";
            SqlCommand cmd8 = new SqlCommand(query8, con);
            cmd8.Parameters.Add(new SqlParameter("@fatherId", fatherID));
            cmd8.Parameters.Add(new SqlParameter("@number", 8));
            cmd8.Parameters.Add(new SqlParameter("@question", txtQ8.Text));
            cmd8.Parameters.Add(new SqlParameter("@answer1", txtA81.Text));
            cmd8.Parameters.Add(new SqlParameter("@answer2", txtA82.Text));
            cmd8.Parameters.Add(new SqlParameter("@answer3", txtA83.Text));
            cmd8.Parameters.Add(new SqlParameter("@answer4", txtA84.Text));
            cmd8.ExecuteNonQuery();

        }




        con.Close();
        Response.Redirect("profile.aspx");
    }
}