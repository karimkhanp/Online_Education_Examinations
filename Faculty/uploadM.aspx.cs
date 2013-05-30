using System;
using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Adapters;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;


public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("~/Faculty/FacultyLogin.aspx", false);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        
        FileInfo file = new FileInfo(File1.Value.Trim());
        if(file.Exists==null)
            Response.Write("<script>alert('please select a file to upload.');</script>");

        

       // FileInfo imageInfo = new FileInfo("'"+FileUpload1.i+"'");

      
        
        else
        {
            //DateTime tnow = DateTime.Now;
            //string n = tnow.ToLongDateString();
            //string z = tnow.Hour.ToString();
            //string x = tnow.Minute.ToString();
            //string c = tnow.Second.ToString();
            //string m = tnow.Millisecond.ToString();
            //string name =  z + x + c + m;
            string fn;
            fn = file.Name;
            //fn = File1.Name.ToString();
            //string extension = file.Extension.ToString();
        
            //Response.Write("<script>alert(extension);</script>");
            //Response.Write("<script>alert(name);</script>");
            string a = DropDownList1.SelectedItem.Value;
            string b = DropDownList2.SelectedItem.Value;
            string path = "..//" +a+"//"+ b;
            //string fname = name + extension;
            //string fn_ex = fn + extension;
            Response.Write("<script>alert(fname);</script>");
            
            File1.PostedFile.SaveAs(MapPath(path)+"//" + fn );
            Label1.Text = "File uploaded successfully!";
            Label1.Visible = true;

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
          //  string s = "insert into upload values('"+ fn + "');";
            string s = "insert into material values('" + a + "','" + b + "','" + fn + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Faculty/user_homeFaculty.aspx",false);

        } 
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = DropDownList1.SelectedValue.Trim();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/user_homeFaculty.aspx");
    }
}




