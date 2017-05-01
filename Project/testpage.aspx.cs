using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testpage : System.Web.UI.Page
{
    private string cnt;
    public string Cnt { get { return cnt; } }
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Alon\Documents\Visual Studio 2012\WebSites\Project\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string query = "SELECT COUNT(*) FROM userData WHERE username=@Creator";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.Add(new SqlParameter("@Creator", "ALON"));

        cnt = cmd.ExecuteScalar().ToString();
    }
}