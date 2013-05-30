using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Security.Principal;
using System.IO;
using System.Data.Sql;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label2.Text = "Password is required!!";
            Label1.Text = "Username is required!!";
            Label1.Visible = true;
            Label2.Visible = true;
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlDataReader read;
            string cm = "select * from factdata where uname='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(cm, con);
            read = cmd.ExecuteReader();
            if (read.Read())
            {
                 //  if(read["isuser"].ToString() == "0" )
               if (read["isuser"].ToString().Equals("0"))
                {
                    Label2.Text = "Your appliation is in process...";
                    Label2.Visible = true;
                }
               else
                {
                    if (read["password"].ToString() == TextBox2.Text)
                    {
                        Session["login"] = TextBox1.Text;
                        Session.Timeout = 30;
                        Response.Redirect("~/faculty/user_homeFaculty.aspx?uname=" + TextBox1.Text );
                    }
                    else
                    {
                        Label2.Text = "Invalid Username or password!!";
                        Label2.Visible = true;
                    }

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
