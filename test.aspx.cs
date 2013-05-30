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

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("databaseConnectionString");
        con.Open();
        string s = "select opn1,opn2,opn3,opn4 from gre_test";
        SqlCommand cmd = new SqlCommand(s,con);
        SqlDataReader rd;
        rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        RadioButtonList1.DataSource = rd;
        RadioButtonList1.DataBind();  


    }
}
