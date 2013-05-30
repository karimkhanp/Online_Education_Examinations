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
            Response.Redirect("~/Faculty/FacultyLogin.aspx", false);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = DropDownList1.SelectedItem.Value.ToString();
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        if (c.Equals("GRE"))
        {
            string s = "insert into gre_test values('" + TextBox7.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text +  "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (c.Equals("TOEFL"))
        {
            string s = "insert into toefl_test values('" + TextBox7.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (c.Equals("IELTS"))
        {
            string s = "insert into ielts_test values('" + TextBox7.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (c.Equals("SAT"))
        {
            string s = "insert into sat_test values('" + TextBox7.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (c.Equals("GATE"))
        {
            string s = "insert into gate_test values('" + TextBox7.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect("~/Faculty/test_next.aspx?cat=" + c + "&que=" + TextBox7.Text + "&ans=" + TextBox13.Text + "&opn1=" + TextBox14.Text + "&opn2=" + TextBox15.Text + "&opn3=" + TextBox16.Text + "&opn4=" + TextBox17.Text );
    }
}
