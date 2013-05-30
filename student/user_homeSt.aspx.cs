using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/HomePage1.aspx", false);
        }
        //  Label2.Text = Request.QueryString["uname"].ToString();
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlDataReader read;
        string s = "select * from userdata where uname = '" + Session["login"] + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        read = cmd.ExecuteReader();
        if (read.Read())
        {
            Label2.Text = read["uname"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Response.Redirect("~/HomePage1.aspx", false);
    }
}
