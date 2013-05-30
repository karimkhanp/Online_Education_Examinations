using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/Faculty/facultyLogin.aspx", false);
        }
      //  Label2.Text = Request.QueryString["uname"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Response.Redirect("~/HomePage1.aspx", false);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/faculty/uploadM.aspx",false);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/news/AddNews.aspx",false);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/faculty/ViewM.aspx",false);
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/Test.aspx",false);
    }
}
