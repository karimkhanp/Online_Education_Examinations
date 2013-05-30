using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;




public partial class form : System.Web.UI.Page 
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        Object objt;
        string st = "select * from userdata where uname='" + TextBox3.Text + "';";
        SqlCommand cm = new SqlCommand(st, con);
        if (TextBox3.Text == null)
        {
            Label2.Visible = true;
            Label2.Text = "please enter the username!";
            con.Close();
        }

        objt = cm.ExecuteScalar();

        if (objt == null)
        {
            
            insert_data();
        }
        else
        {
            Label2.Text = "Not available!";
            con.Close();
        }   
    }

    protected void insert_data()
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();


        string mon = DropDownList2.SelectedItem.Value;
        string dt = DropDownList3.SelectedItem.Value;
        string yr = DropDownList4.SelectedItem.Value;
        string sel = DropDownList1.SelectedValue.Trim();
        string s = "";
        s = RadioButtonList1.SelectedItem.Value;
        s = "insert into userdata values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + dt + "-" + mon + "-" + yr + "','" + s + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + sel + "','" + TextBox14.Text + "',0);";
        SqlCommand cmd = new SqlCommand(s, con);

        if (!FileUpload1.HasFile)
            Response.Write("<script>alert('please select one image file.');</script>");
        else  
            FileUpload1.PostedFile.SaveAs(MapPath("s_images") + "//" + TextBox3.Text + ".jpg");

        string userEnteredCode = TextBox13.Text;

        if (Session["Code"].ToString().Equals(userEnteredCode))
        {
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Submitted Successfully";
            Session["temp"] = TextBox3.Text;
            Session.Timeout = 30;
            Response.Redirect("~/student/StSubmit.aspx",false);
        }
        ValidateUserCode(userEnteredCode);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        
        string s = "select * from userdata where uname='" + TextBox3.Text + "';";
        SqlCommand cm = new SqlCommand(s, con);
        if (TextBox3.Text == null)
        {
            Label2.Visible = true;
            Label2.Text = "please enter the username!";
        }
        else
        {
            Object obj;
            obj = cm.ExecuteScalar();
            if (obj == null)
            {
                Label2.Visible = true;
                Label2.Text = "available!";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "not available!";
            }
        }
    }

    int year;
    string month1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
            //con1.Open();

            //string st = "select * from userdata where uname='" + TextBox3.Text + "';";
            //SqlCommand cm = new SqlCommand(st, con1);
            //if (TextBox3.Text == null)
            //{
            //    Label2.Text = "please enter the username!";
            //}

            //con1.Close();
            

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True");
                con.Open();
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

            DateTime tnow = DateTime.Now;
            ArrayList AlYear = new ArrayList();
            int i;
            for (i = 1950; i <= 2000; i++)
                AlYear.Add(i);
            ArrayList AlMonth = new ArrayList();
          
            AlMonth.Add("jan");
            AlMonth.Add("feb");
            AlMonth.Add("mar");
            AlMonth.Add("apr");
            AlMonth.Add("may");
            AlMonth.Add("jun");
            AlMonth.Add("jul");
            AlMonth.Add("aug");
            AlMonth.Add("sep");
            AlMonth.Add("oct");
            AlMonth.Add("nov");
            AlMonth.Add("dec");

            if (!this.IsPostBack)
            {
                DropDownList4.DataSource = AlYear;
                DropDownList4.DataBind();
                DropDownList4.SelectedValue = tnow.Year.ToString();
                DropDownList2.DataSource = AlMonth;
                DropDownList2.DataBind();
                DropDownList2.SelectedValue = tnow.Month.ToString();
                year = Int32.Parse(DropDownList4.SelectedValue);
                month1 = (DropDownList2.SelectedValue);
                BindDays(year, month1);
                DropDownList3.SelectedValue = tnow.Day.ToString();
            }
        }
    }

    public bool CheckLeap(int year)
    {
        if ((year % 4 == 0))
            return true;
        else 
            return false;
    }

    public void BindDays(int year, string month1)
    {
        int i;
        ArrayList AlDay = new ArrayList();

        switch (month1)
        {
            case "jan":
            case "mar":
            case "may":
            case "jul":
            case "aug":
            case "nov":
                for (i = 1; i <= 31; i++)
                    AlDay.Add(i);
                break;
            case "feb":
                if (CheckLeap(year))
                {
                    for (i = 1; i <= 29; i++)
                        AlDay.Add(i);
                }
                else
                {
                    for (i = 1; i <= 28; i++)
                        AlDay.Add(i);
                }
                break;
            case "apr":
            case "jun":
            case "sep":
            case "dec":
                for (i = 1; i <= 30; i++)
                    AlDay.Add(i);
                break;
       }
        DropDownList3.DataSource = AlDay;
        DropDownList3.DataBind();
        
    }


    public void DropDownList4_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        year = Int32.Parse(DropDownList4.SelectedValue);
        month1 = (DropDownList2.SelectedValue);
        BindDays(year, month1);
    }

    public void DropDownList2_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        year = Int32.Parse(DropDownList4.SelectedValue);
        month1 = (DropDownList2.SelectedValue);
        BindDays(year, month1);
    }

    
    protected void Button5_Click(object sender, EventArgs e)
    {
        // validate the code

        string userEnteredCode = TextBox13.Text;

        ValidateUserCode(userEnteredCode);
    }

    private void ValidateUserCode(string userEnteredCode)
    {
        if (Session["Code"].ToString().Equals(userEnteredCode))
        {
            this.MessageLabel.Text = "Nice to know that you are not a bot.";
            this.MessageLabel.CssClass = "correct";
            
        }
        else
        {
            // clear the session and generate a new code
            Session["Code"] = null;
            this.TextBox1.Text = "";
            this.MessageLabel.CssClass = "error";
            this.MessageLabel.Text = "the text u typed is incorrect please try again....";
           
        }
    }

}



