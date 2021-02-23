using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    contact x = new contact();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string qry = "insert into contact  values('" + txtoffname .Text  + "','" + txtoffaddr .Text  + "','" + txtphno .Text  + "','" + txtfax .Text  + "','" + txtemail .Text + "')";
        x.contact_insert(qry);


        Response.Redirect("contact.aspx");
    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtoffname.Text = "";
        txtoffaddr.Text = "";
        txtphno.Text = "";
        txtfax.Text = "";
        txtemail.Text = "";
    }
}