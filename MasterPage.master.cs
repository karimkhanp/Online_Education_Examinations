using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            fs1.Visible = true;
            LinkButton4.Visible = true;
            LinkButton5.Visible = true;
            LinkButton6.Visible = true;
            Menu3.Visible = false;
            Menu4.Visible = false;
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.google.co.in/search?hl=en&source=hp&q=" + TextBox2.Text, false);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/student/ViewProfileSt.aspx", false);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/student/acc_settingSt.aspx", false);

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Response.Redirect("~/HomePage1.aspx", false);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/ViewProfileF.aspx", false);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/acc_settingF.aspx", false);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactUs.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/AboutUs.aspx");
    }
}
