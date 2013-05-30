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

public partial class Default5 : System.Web.UI.Page
{
    
    static int count=0;
    
    static string[] que = null;
    static string[] true_ans = null;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       generateQue();
    }
    public void generateQue()
    {
        Random rn = new Random();

        for (int i = 1; i < 15; i++)
        {
            int que_id = rn.Next(1, 14);
            string qs = "select * from gre_test where que_no =" + que_id + "";
            con.Open();
            SqlCommand cmd = new SqlCommand(qs, con);
            SqlDataReader rd;
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            if (rd.Read())
            {
                //TextBox1.Text = rd["que"].ToString();
                
                ((Label)GridView1.Rows[i].FindControl("Label1")).Text = rd["que"].ToString();
                ((RadioButton)GridView1.Rows[i].FindControl("RadioButton1")).Text = rd["opn1"].ToString();
                ((RadioButton)GridView1.Rows[i].FindControl("RadioButton2")).Text = rd["opn2"].ToString();
                ((RadioButton)GridView1.Rows[i].FindControl("RadioButton3")).Text = rd["opn3"].ToString();
                ((RadioButton)GridView1.Rows[i].FindControl("RadioButton4")).Text = rd["opn4"].ToString();

            }
            con.Close();
        }
        
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string s;
        string l;
      
        for (int i=0;i<GridView1.Rows.Count; i++)
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
        Response.Redirect("result_gre.aspx?a=" + count);
    }
    public void compare(string s,string l)
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
        }
        read.Close();
        con.Close();
    }
    

}
