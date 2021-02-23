using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;

    City x = new City();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            qry = "select * from city where cname ='" + txtcname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Response.Write("<script>alert('City Has Been Already Added..')</script>");
                txtcname.Text = "";
            }

            else
            {
                qry = "insert into city values('" + ddl_state .SelectedItem .Value  + "','" + txtcname .Text + "','" + ddlstatus .SelectedItem .Value + "')";
                x.city_insert(qry);
                Response.Redirect("city.aspx");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Invalid City..')</script>");

        }
        

    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtcname.Text = "";

    }
}