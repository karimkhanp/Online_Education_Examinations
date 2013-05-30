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
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    //if (Session["login"] == null)
    //    //{
    //    //    Response.Redirect("~/Admin/AdminLogin.aspx", false);
    //    //}
    //    if (!IsPostBack)
    //    {
    //        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    //        con.Open();
    //        string st = "select fn from material where cat='GRE' and subcat='Material'";
    //        SqlCommand cmd = new SqlCommand(st, con);
    //        SqlDataReader read;
    //        read = cmd.ExecuteReader();
    //        GridView1.DataSource = read;
    //        GridView1.DataBind();
    //    }
    //}
    //public void Button3_click(object sender, EventArgs e)
    //{

    //    ArrayList user = new ArrayList();
    //    SqlConnection objConn = null;
    //    foreach (GridViewRow gv in GridView1.Rows)
    //    {
    //        user.Add(gv.Cells[0].Text);
    //    }
    //    objConn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
    //    objConn.Open();
    //    string qer = "delete from material where cat='GRE' and subcat='Material'";

    //    SqlCommand Command;
    //    string file = null;
    //    string path = null;
    //    path = "Material";
    //    foreach (object itm in user)
    //    {
    //        qer = qer + "'" + itm.ToString() + "'";

    //        Command = new SqlCommand(qer, objConn);
    //        file = itm.ToString();
    //        File.Delete(MapPath(path) + "//" + file);
    //        Command.ExecuteNonQuery();
    //    }
    //    Response.Redirect("~/GRE/tempgre.aspx");
    //}
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow rw;
    //    rw = GridView1.SelectedRow;
    //    string fil = "<iframe src='./Material/" + rw.Cells[0].Text + "' width=400 height=500 id='f122'/>";
    //    PlaceHolder1.Controls.Add(new LiteralControl(fil));
    //}





    protected void Page_Load(object sender, EventArgs e)
    {
        GetSelectedRecord();
        BindGrid();
    }

    private void BindGrid()
    {
        string strQuery = "select que" +
            " from customers";
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager
                    .ConnectionStrings["conString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }

    private void GetSelectedRecord()
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            RadioButton rb = (RadioButton)GridView1.Rows[i]
                            .Cells[0].FindControl("RadioButton1");
            if (rb != null)
            {
                if (rb.Checked)
                {
                    HiddenField hf = (HiddenField)GridView1.Rows[i]
                                    .Cells[0].FindControl("HiddenField1");
                    if (hf != null)
                    {
                        ViewState["SelectedContact"] = hf.Value;
                    }

                    break;
                }
            }
        }
    }
    private void SetSelectedRecord()
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            RadioButton rb = (RadioButton)GridView1.Rows[i].Cells[0]
                                            .FindControl("RadioButton1");
            if (rb != null)
            {
                HiddenField hf = (HiddenField)GridView1.Rows[i]
                                    .Cells[0].FindControl("HiddenField1");
                if (hf != null && ViewState["SelectedContact"] != null)
                {
                    if (hf.Value.Equals(ViewState["SelectedContact"].ToString()))
                    {
                        rb.Checked = true;
                        break;
                    }
                }
            }
        }
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        SetSelectedRecord();
    }






}
