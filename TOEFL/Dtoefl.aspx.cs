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
using System.IO;

public partial class student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/student/StudentLogin.aspx", false);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dwn")
        {
            string filepath = Convert.ToString(e.CommandArgument);
            string filename = e.CommandArgument.ToString();
            downfile(filename);
        }
    }
    public void downfile(string fname)
    {
        string p = null;
        p = "Material";

        //  string path = p + "//" + fname;

        Response.ContentType = "application/pdf";
        string abc = MapPath("../TOEFL") + "\\" + "Material" + "\\" + fname;
        //   string path = "C:/Documents and Settings/Hardik/Desktop/ws_site_1-10-09_last/SAT/Material/" + fname;
        //   Response.WriteFile(path);
        Response.WriteFile(abc);
        Response.AppendHeader("content-disposition", "attachment; filename=" + fname);
        //  Response.Write(MapPath(path));
        //File.OpenText(MapPath(path));
        //File.OpenRead(MapPath(path));

        Response.End();

    }
}
