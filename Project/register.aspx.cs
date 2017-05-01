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
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con.Open();

        // Checking if username already exists

        string query1 = "SELECT COUNT(*) FROM userData WHERE username=@Username";
        SqlCommand cmd1 = new SqlCommand(query1, con);

        cmd1.Parameters.Add(new SqlParameter("@username", txtUser.Text));

        if ((int)cmd1.ExecuteScalar() == 0)
        {

            //Checking if email already exists

            string query2 = "SELECT COUNT(*) FROM userData WHERE email=@Email";
            SqlCommand cmd2 = new SqlCommand(query2, con);

            cmd2.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));

            if ((int)cmd2.ExecuteScalar() == 0)
            {

                //Creating new user

                string query3 = "INSERT INTO userData(username, password, email, fname, lname) VALUES (@username, @password, @email, @fname, @lname)";
                SqlCommand cmd3 = new SqlCommand(query3, con);

                cmd3.Parameters.Add(new SqlParameter("@username", txtUser.Text));
                cmd3.Parameters.Add(new SqlParameter("@password", txtPass.Text));
                cmd3.Parameters.Add(new SqlParameter("@email", txtEmail.Text));
                cmd3.Parameters.Add(new SqlParameter("@fname", txtFname.Text));
                cmd3.Parameters.Add(new SqlParameter("@lname", txtLname.Text));

                cmd3.ExecuteNonQuery();
                con.Close();

                Session["logged"] = "yes";
                Session["user"] = txtUser.Text;
                Session["email"] = txtEmail.Text;
                Session["fname"] = txtFname.Text;
                Session["lname"] = txtLname.Text;

                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("Email address already in use.");
            }
        }
        else
        {
            Response.Write("Username already taken.");
        }
    }
}