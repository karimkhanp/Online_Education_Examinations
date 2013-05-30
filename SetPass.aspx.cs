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

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    //    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
     //   con.Open();
     //   SqlDataReader read;
     //   string s = "select * from userdata where uname = '" + TextBox6.Text + "'";
     //   SqlCommand cmd = new SqlCommand(s, con);
     //   read = cmd.ExecuteReader();

     //   if (read.Read())
     //   {
     //       Label1.Text = read["uname"].ToString();
     //       TextBox4.Text = read["email"].ToString();
     //       TextBox6.Text = read["city"].ToString();
     //       TextBox8.Text = read["pcode"].ToString();
     //       TextBox10.Text = read["country"].ToString();
     //   }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlDataReader read;

       
        string s = "select * from userdata where uname = '" + TextBox6.Text + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        Label1.Visible = false;
        read = cmd.ExecuteReader();
   //     if (read.Read())
        {
            if (TextBox4.Text == null || TextBox5.Text == null && TextBox4.Text == TextBox5.Text)
            {
                con.Close();
                read.Close();
                Label1.Visible = true;
                Label1.Text = "passward not reseted.";
                return;
            }
            if (TextBox4.Text != null && TextBox5.Text != null && TextBox4.Text == TextBox5.Text)
            {
                string s1 = "update userdata set password='" + TextBox5.Text + "' where uname='" + TextBox6.Text + "'";

                //  con.Open();
                read.Close();
                Label1.Visible = true;
                Label1.Text = "passward reseted successfully.";

                SqlCommand cmd2 = new SqlCommand(s1, con);
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/user_homeSt.aspx");
            }
        }
    }
}
