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

public partial class Faculty_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/Faculty/facultyLogin.aspx", false);
        }
        //if (Session["login"] == null)
        //{
        //    Response.Redirect("~/faculty/FacultyLogin.aspx", false);
        //}

        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        //con.Open();
        //string s = "select * from material where cat='GRE' and subcat='Test Paper'";
        //SqlCommand cmd = new SqlCommand(s, con);
        //SqlDataReader rd;
        //rd = cmd.ExecuteReader();
        //Repeater1.DataSource = rd;
        //Repeater1.DataBind();
        //rd.Close();
        //con.Close();
    }
    //public void Button1_Click(object sender, EventArgs e)
    //{
    //    ArrayList user = new ArrayList();
        
    //    //if(!IsPostBack)
    //    //{
    //        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    //        con.Open();
            
            
    //        //foreach (GridViewRow gv in GridView1.Rows)
    //        //{
    //        //    user.Add(gv.Cells[2].Text);
    //        //}
            
    //        string s = "delete from material where cat='GRE' and subcat='Test Paper' and fn=";
    //        SqlCommand Command;
    //        foreach (object itm in user)
    //        {
    //            string file = null;
    //            //file = "'" + itm.ToString() + "'";
    //            s = s + "'" + itm.ToString() + "'";
    //            Command = new SqlCommand(s, con);
    //            Command.ExecuteNonQuery();
                
    //            File.Delete( ".//" + "GRE//" + "Test Paper//" + file );
                
                
    //        }
    //        //SqlCommand cmd = new SqlCommand(s, con);
    //        //cmd.ExecuteNonQuery();
    //        //con.Close();
    //    //}
        
    //}
    //public void Button3_Click(object sender, EventArgs e)
    //{
    //    ArrayList user = new ArrayList();
    //    SqlConnection objConn = null;
    //    foreach (GridViewRow gv in GridView1.Rows)
    //    {
    //        user.Add(gv.Cells[0].Text);
    //    }
    //    objConn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    //    objConn.Open();
    //    string qer = "delete from material where fn=";
        
    //    SqlCommand Command;
    //    string file = null;
    //    string path = null;
    //    path =  "Material";
    //    foreach (object itm in user)
    //    {
    //        qer = qer + "'" + itm.ToString() + "'";

    //        file = itm.ToString();
    //        Command = new SqlCommand(qer, objConn);
    //        string str = MapPath(path).Remove(58);
    //        // File.Delete(str +"//"+file);
    //        File.Delete(MapPath(path) + "//" + file);
    //        Command.ExecuteNonQuery();

    //    }
    //    //GridViewRow rw;
    //    //rw = GridView1.SelectedRow;

    //    //file = rw.Cells[0].Text.ToString();
    //    //qer = qer + "'" + rw.Cells[0].Text.ToString() + "'";

        
    //    //Command = new SqlCommand(qer, objConn);
    //    //string str = MapPath(path).Remove(58);
    //    //File.Delete(MapPath(path) + "//" + file);
    //    //Command.ExecuteNonQuery();
       
    //    Response.Redirect("~/GRE/Mgre.aspx",false);
    
    //}
   

    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow rw;
    //    rw = GridView1.SelectedRow;
    //    string fil = "<iframe src='./Material/" + rw.Cells[0].Text + "' width=400 height=500 id='f122'/>";
    //    PlaceHolder1.Controls.Add(new LiteralControl(fil));
    //}
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow rw;
        rw = GridView1.SelectedRow;
        string s = rw.Cells[0].Text;
        string fil = "<iframe src='./Material/" + s + "' width=400 height=400 id='f122'/>";
        PlaceHolder1.Controls.Add(new LiteralControl(fil));



    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            string filepath = Convert.ToString(e.CommandArgument);
            string filename = e.CommandArgument.ToString();
            //   Button3_Click(sender,e);



            SqlConnection objConn = null;
            objConn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            objConn.Open();
            string qer = "delete from material where fn=";
            SqlCommand Command;
            string file = null;
            string path = null;
            path = "Material";
            qer = qer + "'" + filename + "'";
            Command = new SqlCommand(qer, objConn);
            File.Delete(MapPath(path) + "//" + filename);
            Command.ExecuteNonQuery();
            Response.Redirect("~/SAT/Msat.aspx", false);

        }
    }

}
