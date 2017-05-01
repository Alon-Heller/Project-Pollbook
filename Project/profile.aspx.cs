using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class generic : System.Web.UI.Page
{
    private string topmessage;
    public string TopMessage { get { return topmessage; } }
    private string menubutton;
    public string MenuButton { get { return menubutton; } }
    private string polltable = "";
    public string PollTable { get { return polltable; } }
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Alon\Documents\Visual Studio 2012\WebSites\Project\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        // User only page redirect
        if ((string)(Session["logged"]) != "yes")
            Response.Redirect("login.aspx");
        // End user-only

        // Identification message on top bar (+read polls)
        if ((string)(Session["logged"]) == "yes")
        {
            con.Open();
            topmessage = String.Format("POLLBOOK | Hello {0} | <a href=\"profile.aspx\">Profile</a> | <a href=\"logout.aspx\">Log Out</a>", Session["user"]);
            string query = "SELECT * FROM pollData WHERE creator=@username ORDER BY date DESC";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@username", Session["user"]));
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                polltable += String.Format("<tr><td>{0}</td><td>{1:dd/MM/yy}</td><td>{2}</td><td><a href=\"results.aspx?id={3}\">View Results</a></td><td><a href=\"delete.aspx?id={3}\" onclick=\"return confirm('Are you sure you want to delete {0}? The results will not be saved.');\" class=\"icon fa-close\"><span class=\"label\">Delete</span></a></td></tr>", removeEndingSpaces((string)reader["title"]), reader["date"], reader["count"], reader["Id"]);
            }
            if (polltable == "")
            {
                polltable = "You have no polls. <a href=\"create.aspx\"><em>Create one now!</em></a>";
            }
            else
            {
                polltable = "<tr><td><strong>Title</strong></td><td><strong>Date created</strong></td><td><strong># of Entries</strong></td><td><strong>View Results</strong></td><td><strong>Delete</strong></td></tr>" + polltable;
            }
            con.Close();
        }
        else
        {
            topmessage = "POLLBOOK | Hello Guest | <a href=\"login.aspx\">Login</a> | <a href=\"register.aspx\">Create Account</a>";
        }
        // End message (+read polls)

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

    public static string removeEndingSpaces(string input)
    {
        if (input == null)
            return input;
        char[] chars = input.ToCharArray();
        for (int i = input.Length - 1; i >= 0; i--)
        {
            if (chars[i] != ' ')
                return input.Substring(0, i + 1);
        }
        return "";
    }
}