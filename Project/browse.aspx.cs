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

        // Retrieve poll table

        con.Open();
        string query = "SELECT * FROM pollData";
        if (Request.QueryString["byTitle"] != null)
        {
            query += " WHERE title LIKE '%" + Request.QueryString["byTitle"]+"%'";
            if (Request.QueryString["byAuthor"] != null)
                query += " AND creator='" + Request.QueryString["byAuthor"]+"'";
        }
        else if (Request.QueryString["byAuthor"] != null)
            query += " WHERE creator='" + Request.QueryString["byAuthor"]+"'";

        query += " ORDER BY date DESC";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            polltable += String.Format("<tr><td>{0}</td><td>{1}</td><td>{2:dd/MM/yy}</td><td><a href=\"fillpoll.aspx?id={3}\">Answer Poll</a></td></tr>", reader["title"], reader["creator"], reader["date"], reader["Id"]);
        }
        if (polltable == "")
        {
            if ((Request.QueryString["byAuthor"] != null) || (Request.QueryString["byTitle"] != null))
                polltable = "There are no matching active polls. <a href=\"create.aspx\"><em>Create one now!</em></a>";
            else
                polltable = "There are no active polls. <a href=\"create.aspx\"><em>Create one now!</em></a>";
        }
        else
        {
            polltable = "<tr><td><strong>Title</strong></td><td><strong>Author</strong></td><td><strong>Date created</strong></td><td><strong>Answer Poll</strong></td></tr>" + polltable;
        }
        con.Close();

        // End poll table
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string address = "browse.aspx";
        if (txtTitle.Text != "")
        {
            address += "?byTitle=" + txtTitle.Text;
            if (txtAuthor.Text != "")
                address += "&byAuthor=" + txtAuthor.Text;
        }
        else if (txtAuthor.Text != "")
            address += "?byAuthor=" + txtAuthor.Text;
        Response.Redirect(address);
    }
}