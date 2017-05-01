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
        // Guest only page redirect
        if ((string)(Session["logged"]) == "yes")
            Response.Redirect("index.aspx");
        // End guest-only

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
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();

        string query = "SELECT * FROM userData WHERE username=@username AND password=@password";
        SqlCommand cmd = new SqlCommand(query, con);

        cmd.Parameters.Add(new SqlParameter("@username", txtUser.Text));
        cmd.Parameters.Add(new SqlParameter("@password", txtPass.Text));

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            Session["logged"] = "yes";
            Session["user"] = txtUser.Text;
            Session["email"] = reader["email"];

            if (reader["fname"]==null || (string)(reader["fname"]) == "")
            {
                Session["fname"] = "---";
                Session["lname"] = "";
            }
            else
            {
                Session["fname"] = reader["fname"];
                Session["lname"] = reader["lname"];
            }

            Response.Redirect("index.aspx");
        }
        else
            Response.Write("Username or Password incorrect.");


        con.Close();
    }
}