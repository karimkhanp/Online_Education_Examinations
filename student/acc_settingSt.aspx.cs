
using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/student/StudentLogin.aspx", false);
        }
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlDataReader read;
        string s = "select * from userdata where uname = '" + Session["login"] + "'";
        SqlCommand cmd = new SqlCommand(s,con);
        read = cmd.ExecuteReader();

        if (read.Read())
        {
            Label1.Text = read["uname"].ToString();
            TextBox4.Text = read["email"].ToString();
            TextBox6.Text = read["city"].ToString();
            TextBox8.Text = read["pcode"].ToString();
            TextBox10.Text = read["country"].ToString();
        }
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        

        if (Label4.Visible == true && Label5.Visible == true && Label6.Visible == true && TextBox1.Visible == true && TextBox2.Visible == true && TextBox3.Visible == true)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select password from userdata where uname='" + Label1.Text + "'", con);
            SqlDataReader read;
            read = cmd1.ExecuteReader();
            if (read.Read())
            {
                if (TextBox1.Text != read["password"].ToString())
                {
                    Label2.Text = "Incorrect Password!.. password must be required!";
                    Label2.Visible = true;
                    con.Close();
                    read.Close();
                    return;
                }
            }

            if (TextBox2.Text != TextBox3.Text && TextBox2.Text != "")
            {
                return;

            }
            else
            {
                if (TextBox2.Text == null && TextBox3.Text == null && TextBox2.Text == TextBox3.Text)
                {
                    con.Close();
                    read.Close();

                    return;

                }
                else
                {
                    if (TextBox2.Text != null && TextBox3.Text != null && TextBox2.Text == TextBox3.Text)
                    {
                        string s = "update userdata set password='" + TextBox3.Text + "' where uname='" + Label1.Text + "'";

                        //  con.Open();
                        read.Close();

                        SqlCommand cmd2 = new SqlCommand(s, con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            con.Close();

        }
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select email from userdata where uname='" + Label1.Text + "'", con);
       
        SqlDataReader read2;
        read2 = cmd3.ExecuteReader();
        if (read2.Read())
        {
            if (TextBox4.Text != read2["email"].ToString())
            {
                con.Close();
                read2.Close();
                return;
            }
        }
        con.Close();
        
        string s2 = "update userdata set email='";
        if (TextBox5.Text == "")
        {
            con.Close();
            read2.Close();
            return;
        }
        else
        {
            s2 = s2 + TextBox5.Text + "'" + " where uname='" + Label1.Text + "'"; ;
            read2.Close();

            con.Open();
            SqlCommand cmd4 = new SqlCommand(s2, con);
            cmd4.ExecuteNonQuery();
            con.Close();
        }
        
        


        SqlCommand cmd5 = new SqlCommand("select city from userdata where uname='" + Label1.Text + "'", con);
        con.Open();
        SqlDataReader read3;
        read3 = cmd5.ExecuteReader();
        if (read3.Read())
        {
            if (TextBox6.Text != read3["city"].ToString())
            {
                con.Close();
                read3.Close();
                return;
            }
        }
        con.Close();

        string s3 = "update userdata set city='";
        if (TextBox7.Text == "")
        {
            con.Close();
            read3.Close();
            return;
        }
        else
        {
            s3 = s3 + TextBox7.Text + "'" + " where uname='" + Label1.Text + "'"; ;
            read3.Close();

            con.Open();
            SqlCommand cmd6 = new SqlCommand(s3, con);
            cmd6.ExecuteNonQuery();

            con.Close();

        }
        


        SqlCommand cmd9 = new SqlCommand("select pcode from userdata where uname='" + Label1.Text + "'", con);
        con.Open();
        SqlDataReader read5;
        read5 = cmd9.ExecuteReader();
        if (read5.Read())
        {
            if (TextBox8.Text != read5["pcode"].ToString())
            {
                con.Close();
                read5.Close();
                return;
            }
        }
        con.Close();

        string s5 = "update userdata set pcode='";
        if (TextBox9.Text == "")
        {
            con.Close();
            read5.Close();
            return;
        }
        else
        {
            s5 = s5 + TextBox9.Text + "' where uname='" + Label1.Text + "'"; ;
            read5.Close();

            con.Open();
            SqlCommand cmd10 = new SqlCommand(s5, con);
            cmd10.ExecuteNonQuery();

            con.Close();

        }
        

        SqlCommand cmd7 = new SqlCommand("select country from userdata where uname='" + Label1.Text + "'", con);
        con.Open();
        SqlDataReader read4;
        read4 = cmd7.ExecuteReader();
        if (read4.Read())
        {
            if (TextBox10.Text != read4["country"].ToString())
            {
                con.Close();
                read4.Close();
                return;
            }
        }
        con.Close();

        string s4 = "update userdata set country='";
        if (TextBox11.Text == "")
        {
            con.Close();
            read4.Close();
            return;
        }
        else
        {
            s4 = s4 + TextBox11.Text + "'" + " where uname='" + Label1.Text + "'"; ;
            read4.Close();

            con.Open();
            SqlCommand cmd8 = new SqlCommand(s4, con);
            cmd8.ExecuteNonQuery();

            con.Close();
        }
        
        Label3.Text = "Changes has been saved successfully..";
        Label3.Visible = true;
       // Response.Redirect("~/student/user_homeSt.aspx", false);

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/student/user_homeSt.aspx", false);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible=true;
    }
}
