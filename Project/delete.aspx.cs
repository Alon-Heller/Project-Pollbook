using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class delete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Alon\Documents\Visual Studio 2012\WebSites\Project\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //Kick guests to whoops.aspx
        if ((string)Session["logged"] != "yes")
            Response.Redirect("whoops.aspx");
        //end kick guests

        // Identify&delete poll
        string idstr = Request.QueryString["id"];
        int id;
        if (!int.TryParse(idstr, out id))
        {
            Response.Redirect("whoops.aspx");
        }
        else
        {
            con.Open();
            string query = "DELETE FROM pollData WHERE Id=@Id AND creator=@Username";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@Id", id));
            cmd.Parameters.Add(new SqlParameter("@Username", Session["user"]));

            if (cmd.ExecuteNonQuery() == 0)
                Response.Redirect("whoops.aspx");
            else
            {
                string queryQ = "DELETE FROM questionData WHERE fatherId=@Id";
                SqlCommand cmdQ = new SqlCommand(queryQ, con);
                cmdQ.Parameters.Add(new SqlParameter("@Id", id));
                cmdQ.Parameters.Add(new SqlParameter("@Username", Session["user"]));

                cmdQ.ExecuteNonQuery();

                Response.Redirect("profile.aspx");
            }

            con.Close();
        }

        // end id&delete
    }
}