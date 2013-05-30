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

public partial class Default4 : System.Web.UI.Page
{
    int count = 0;
    int wa = 0;
    static string[] que = null;
    static string[] true_ans = null;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["login"] == null)
        {
            Response.Redirect("~/student/StudentLogin.aspx", false);
        }
        generateQue();
        for (int i = 1; i < 10; i++)
            Label3.Text = i.ToString();

    }
    public void generateQue()
    {
        Random rn = new Random();
        DataTable t = new DataTable();
        int que_id;
        string qs = null;
        //for (int i = 0; i < 15; i++)
        //{
        //    int que_id = rn.Next(1, 14);
        //    string qs = "select * from gre_test where que_no =" + que_id + "";
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand(qs, con);
        //    SqlDataReader rd;
        //    rd = cmd.ExecuteReader();
        //    GridView1.DataSource = t;
        //    t.Load(rd);
        //   // if (rd.Read())
        //    {
        //        //TextBox1.Text = rd["que"].ToString();

        //        ((Label)GridView1.Rows[i].FindControl("Label1")).Text = "a";
        //        ((RadioButton)GridView1.Rows[i].FindControl("RadioButton1")).Text = t.Rows[0][3].ToString(); //rd["opn1"].ToString();
        //        ((RadioButton)GridView1.Rows[i].FindControl("RadioButton2")).Text = t.Rows[0][4].ToString(); //rd["opn2"].ToString();
        //        ((RadioButton)GridView1.Rows[i].FindControl("RadioButton3")).Text = t.Rows[0][5].ToString(); //rd["opn3"].ToString();
        //        ((RadioButton)GridView1.Rows[i].FindControl("RadioButton4")).Text = t.Rows[0][6].ToString(); //rd["opn4"].ToString();

        //    }
        //    con.Close();
        //}
        int flag = 0;
        int flag2 = 0;
        int[] a = new int[10];

        for (int i = 0; i < 10; i++)
        {
        l1:
            que_id = rn.Next(1, 15);
            a[i] = que_id;
            for (int j = 0; j < i; j++)
            {
                if (a[j] == que_id)
                {
                    goto l1;
                }
            }
            if (flag == 0)
            {
                qs = "select * from gre_test where que_no =";
                flag = 1;
            }
            if (flag2 == 0)
            {

                qs = qs + que_id;
                flag2 = 1;
                con.Open();
                SqlCommand cmd = new SqlCommand(qs, con);
                SqlDataReader rd;
                rd = cmd.ExecuteReader();
                t.Load(rd);
                GridView1.DataSource = t;
                GridView1.DataBind();
                con.Close();
            }
            else if (flag == 1)
            {
                qs = qs.Remove(37);

                qs = qs + que_id;
                con.Open();
                SqlCommand cmd = new SqlCommand(qs, con);
                SqlDataReader rd;
                rd = cmd.ExecuteReader();
                t.Load(rd);
                GridView1.DataSource = t;
                GridView1.DataBind();
                con.Close();
            }


        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string s;
        string l;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (((RadioButton)GridView1.Rows[i].FindControl("RadioButton1")).Checked == true)
            {
                s = ((RadioButton)GridView1.Rows[i].FindControl("RadioButton1")).Text;
                l = ((Label)GridView1.Rows[i].FindControl("Label1")).Text;
                compare(s, l);
            }

            else if (((RadioButton)GridView1.Rows[i].FindControl("RadioButton2")).Checked == true)
            {
                s = ((RadioButton)GridView1.Rows[i].FindControl("RadioButton2")).Text;
                l = ((Label)GridView1.Rows[i].FindControl("Label1")).Text;
                compare(s, l);
            }
            else if (((RadioButton)GridView1.Rows[i].FindControl("RadioButton3")).Checked == true)
            {
                s = ((RadioButton)GridView1.Rows[i].FindControl("RadioButton3")).Text;
                l = ((Label)GridView1.Rows[i].FindControl("Label1")).Text;
                compare(s, l);
            }
            else if (((RadioButton)GridView1.Rows[i].FindControl("RadioButton4")).Checked == true)
            {
                s = ((RadioButton)GridView1.Rows[i].FindControl("RadioButton4")).Text;
                l = ((Label)GridView1.Rows[i].FindControl("Label1")).Text;
                compare(s, l);
            }
        }



        Label2.Visible = true;
        Label2.Text = count.ToString();
        int t = 0;
        t = wa + count;
        Response.Redirect("~/result_gre.aspx?a=" + count + "&q=" + t);
    }
    public void compare(string s, string l)
    {
        con.Open();
        string ans = "select ans from gre_test where que = '" + l + "'";
        SqlCommand cmd = new SqlCommand(ans, con);
        SqlDataReader read;
        read = cmd.ExecuteReader();
        if (read.Read())
        {
            if (read["ans"].ToString().Equals(s))
            {
                count = count + 1;
            }
            else
            {
                wa = wa + 1;
            }
        }
        read.Close();
        con.Close();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {

        Button1_Click(sender, e);

    }
}
