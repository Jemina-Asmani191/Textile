using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    feedback x = new feedback();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string qry = "insert into feedback  values('" + txtname .Text  + "','" + txtemail .Text + "','" + txtphone.Text + "','" + ddlpurpose.SelectedItem.Value + "','" + txtsugges .Text + "')";
        x.feedback_insert(qry);


        Response.Redirect("suggestion_feedback.aspx");
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        txtsugges.Text = "";


    }
}