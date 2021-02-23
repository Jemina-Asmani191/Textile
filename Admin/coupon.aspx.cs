using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    Coupon x = new Coupon();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        String qry = "insert into coupon values('" + txtc_code .Text  + "','" + txt_dis .Text + "','" + txt_maxdis .Text + "','" + txt_cdate .Text + "')";
        x.coupon_insert(qry);
        Response.Redirect("coupon.aspx");
    }
}