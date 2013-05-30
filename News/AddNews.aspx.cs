using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/Faculty/FacultyLogin.aspx", false);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string x = "";
        x = t1.Text;
       
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        conn.Open();
        string dt = DateTime.Now.Date.ToShortDateString();
        string com = "insert into news values('" + x + "','" + TextArea1.Value.Replace(Environment.NewLine, "<br />") + "','" + dt + "')";
        SqlCommand comm = new SqlCommand(com, conn);
        comm.ExecuteNonQuery();
        conn.Close();
        Label2.Visible = true;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/News/AddNews.aspx",false);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/user_homeFaculty.aspx", false);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/user_homeFaculty.aspx?uname=user", false);
    }
}
