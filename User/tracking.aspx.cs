using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlConnection cn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlCommand cmd1 = new SqlCommand();
    string qry1;
    SqlCommand cmd2 = new SqlCommand();
    string qry2;
    SqlDataAdapter dap = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    DataTable dt = new DataTable();
    string umobno;
    int order_id;
    string order_date;
    string order_total;
    string tmobileno;//tracking mobile no
    string uname;
    
    

    protected void Page_Load(object sender, EventArgs e)
    {
        umobno = Session["umobileno"].ToString();
        uname = Session["uname"].ToString();
        
        cn.Open();
        qry = "select * from uorder where umobile_no = " + umobno;
        cmd = new SqlCommand(qry, cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                
                order_id = Convert.ToInt32(dr[0]);
                order_date = dr[1].ToString();
                order_total = dr[9].ToString();


                //cn1.Open();

                //tmobileno = Session["umobileno"].ToString();// tracking mobile no
                //string customer_name = "jemina";
                //qry1 = "insert into tracking Values('" + customer_name + "'," + tmobileno + "," + order_id + "," + order_date + ",'" + order_total + "')";
                //cmd1 = new SqlCommand(qry1, cn1);
                //cmd1.ExecuteNonQuery();
                //cn1.Close();

                



            }

        }
        cn.Close();
        
    }
    protected void btntrack_Click(object sender, EventArgs e)
    {
       // System.Threading.Thread.Sleep(1000000);

        //string uname = "jemina";
        cn2.Open();
        qry2 = "select * from uorder where order_id= '" + txtorderid.Text + "'";
        cmd2 = new SqlCommand(qry2, cn2);
        dr = cmd2.ExecuteReader();

        if (dr.HasRows)
        {
            
            while (dr.Read())
            {
                if (Session["uname"] != null)
                {
                    lbluname.Text = Session["uname"].ToString(); ;
                }
                lblmobno.Text = Session["umobileno"].ToString();
                lbloid.Text = dr[0].ToString();
                lblodate.Text = dr[1].ToString();
                lblnettot.Text = dr[9].ToString();

             
            }
            //System.Threading.Thread.Sleep(1000000);
        }

        else
        {
            Response.Write("<script>alert('Invalid Searching Data..')</script>");
            //System.Threading.Thread.Sleep(1000000);
        }

        
        cn2.Close();

        //
        
    }
    protected void btnstart_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(1000000);
    }
}