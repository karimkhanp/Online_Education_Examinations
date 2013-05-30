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
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            string sel = DropDownList1.SelectedValue.Trim();
            DataSet ds = new DataSet();
            string c = "select sq_que from security_que";
            SqlDataAdapter ad = new SqlDataAdapter(c, con);
            ad.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sq_que";
            DropDownList1.DataValueField = "sq_que";
            DropDownList1.DataBind();
            con.Close();
        }
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        string sel = DropDownList1.SelectedValue.Trim();

        SqlDataReader read;
        string s = "select * from userdata where uname = '" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        read = cmd.ExecuteReader();
        string s1, s2;
        Label1.Visible = false;
        Label2.Visible = false;
        if (read.Read())
        {
            //    Label1.Text = read["uname"].ToString();
            s1 = read["sq_que"].ToString();
            s2 = read["sq_ans"].ToString();
            //    TextBox6.Text = read["city"].ToString();
            //    TextBox8.Text = read["pcode"].ToString();
            //    TextBox10.Text = read["country"].ToString();

            if (s1 != DropDownList1.SelectedValue.Trim())
            {
                Label1.Text = "Incorrect Security Question!";
                Label1.Visible = true;
                con.Close();
                read.Close();
                return;
            }
            if (s2 != TextBox3.Text)
            {
                Label2.Text = "Incorrect Answer for selected security Question!";
                Label2.Visible = true;
                con.Close();
                read.Close();
                return;
            }
            read.Close();
            if (s1 == DropDownList1.SelectedValue.Trim() && s2 == TextBox3.Text)
            {

                string str = "select password from userdata where uname = '" + TextBox1.Text + "'";
                SqlCommand cmnd = new SqlCommand(s, con);
                read = cmd.ExecuteReader();

                if (read.Read())
                {
                    Label3.Text = "Your Password is : ";
                    LabelP.Text = read["password"].ToString();
                    
                }
             //   Response.Redirect("~/SetPass.aspx",true);
            }
        }
    }
}
