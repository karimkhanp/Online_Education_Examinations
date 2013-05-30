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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/student/StudentLogin.aspx", false);
        }
        TextBox3.Text = Request.QueryString["cat"].ToString();
        TextBox4.Text = Request.QueryString["que"].ToString();
        TextBox5.Text = Request.QueryString["ans"].ToString();
        TextBox6.Text = Request.QueryString["opn1"].ToString();
        TextBox7.Text = Request.QueryString["opn2"].ToString();
        TextBox8.Text = Request.QueryString["opn3"].ToString();
        TextBox9.Text = Request.QueryString["opn4"].ToString();
    }
}
