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

public partial class Faculty_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem)
        //    return;

        DataRowView row = (DataRowView)e.Item.DataItem;

        RadioButtonList rbl = new RadioButtonList();
        rbl.RepeatDirection = RepeatDirection.Vertical;
        //string[] ans1;

        //ans1 =Convert.ToString( row["ans"]);
        string[] ans1 = row["ans"].ToString().Split('|');
        //string[] ans1 = row["ans"].ToString();
        //for (int n = 0; n < Choices.Length; n++)
        //{
        //    rbl.Items.Add(new ListItem(Choices[n], n.ToString()));
        //}
        for (int n = 0; n < ans1.Length; n++)
        {
            rbl.Items.Add(new ListItem(ans1[n], n.ToString()));
        }
        if (row["ans"] != DBNull.Value)
            rbl.SelectedIndex = (int)row["ans"];
        //if (row["Answer"] != DBNull.Value)
        //    rbl.SelectedIndex = (int)row["Answer"];
        ((Label)e.Item.FindControl("ChoicesLabel")).Controls.Add(rbl);
    }

    
    public void Page_Init(Object sender, EventArgs e)
    {
        //Repeater1.DataBind();
    }


    //protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem)
    //        return;

    //    DataRowView row = (DataRowView)e.Item.DataItem;
    //    RadioButtonList rbl = new RadioButtonList();
    //    rbl.RepeatDirection = RepeatDirection.Horizontal;
    //    string[] Choices = row["Choices"].ToString().Split('|');
    //    for (int n = 0; n < Choices.Length; n++)
    //    {
    //        rbl.Items.Add(new ListItem(Choices[n], n.ToString()));
    //    }
    //    if (row["Answer"] != DBNull.Value)
    //        rbl.SelectedIndex = (int)row["Answer"];
    //    ((Label)e.Item.FindControl("ChoicesLabel")).Controls.Add(rbl);
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
    }


}
