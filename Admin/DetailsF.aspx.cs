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

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/Admin/AdminLogin.aspx", false);
        }
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            string st = "select * from factdata where isuser=1";
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader read;
            read = cmd.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        ArrayList user = new ArrayList();
        SqlConnection objConn = null;

        foreach (GridViewRow gv in GridView1.Rows)
        {


            if (((CheckBox)gv.FindControl("chkid")).Checked == true)
            {

                user.Add(gv.Cells[2].Text);
            }
        }
        objConn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        objConn.Open();
        string qer = "delete from factdata where uname=";

        SqlCommand Command;
        foreach (object itm in user)
        {
            qer = qer + "'" + itm.ToString() + "'";

            Command = new SqlCommand(qer, objConn);
            Command.ExecuteNonQuery();
            qer = "delete from factdata where uname=";
        }
        Response.Redirect("~/admin/DetailsF.aspx");
    }
}
