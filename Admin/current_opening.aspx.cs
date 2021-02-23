using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    admin_current_opening x = new admin_current_opening();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_sub_Click(object sender, EventArgs e)
    {
        string qry = "insert into Current_Opening  values('" + txtposition.Text + "','" + txtmin_quali .Text  + "','" + txteligi.Text + "')";
        x.current_opening_insert(qry);


        Response.Redirect("current_opening.aspx");
    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtposition.Text = "";
        txtmin_quali.Text = "";
        txteligi.Text = "";
    }
}