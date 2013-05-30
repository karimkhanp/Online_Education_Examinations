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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        if (TextBox2.Text == "" || TextBox1.Text == "")
        {
            if (TextBox1.Text == "")
            {

                Label1.Text = "Username is required!!";
                Label1.Visible = true;
            }
            if (TextBox2.Text == "")
            {
                Label2.Text = "Password is required!!";
                Label2.Visible = true;
            }
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlDataReader read;
            string cm = "select * from admin where uname='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(cm, con);
            read = cmd.ExecuteReader();
            if (read.Read())
            {
                if (read["password"].ToString() == TextBox2.Text)
                {
                    Session["login"] = TextBox1.Text;
                    Session.Timeout = 30;
                    Response.Redirect("~/Admin/AdminHome.aspx", false);
                }
                else
                {
                    Label2.Text = "Invalid Username or password!!";
                    Label2.Visible = true;
                }
            }
            else
            {
                Label2.Text = "Invalid Username or password!!";
                Label2.Visible = true;
            }
        }

    }
}
