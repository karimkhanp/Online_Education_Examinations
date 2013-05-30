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

public partial class Faculty_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/faculty/FacultyLogin.aspx", false);
        }
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlDataReader read;
        string s = "select * from factdata where uname = '" + Session["login"] + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        read = cmd.ExecuteReader();

        if (read.Read())
        {
            TextBox12.Text = read["uname"].ToString();
            TextBox2.Text = read["fname"].ToString();
            TextBox3.Text = read["lname"].ToString();
            TextBox1.Text = read["password"].ToString();
            TextBox5.Text = read["sq_que"].ToString();
            TextBox7.Text = read["sq_ans"].ToString();
            TextBox9.Text = read["gender"].ToString();
            TextBox11.Text = read["dob"].ToString();
            TextBox13.Text = read["qual"].ToString();
            TextBox4.Text = read["email"].ToString();
            TextBox6.Text = read["city"].ToString();
            TextBox8.Text = read["pcode"].ToString();
            TextBox10.Text = read["country"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/user_homeFaculty.aspx?uname=user");
    }
}
