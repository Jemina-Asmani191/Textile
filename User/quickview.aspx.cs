using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading;
using AjaxControlToolkit;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlConnection cn1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlConnection cn2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    string str;
    String q;
    String proid;
    String proname;
    String proprice;
    String proimg;
    String umobno;
    int prototal;
    string q1;
    int q2;
    int cartid;
    int carttotal;
   
    ratingDataContext x = new ratingDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        //panel1 for coupon code
        //panel2 for review
        //panel3 for view rating
        proid = Request.QueryString.Get("proid");
        cn.Open();
        q = "Select * from product where proid ='" + proid + "'";
        cmd = new SqlCommand(q, cn);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.HasRows)
        {
            while (dr1.Read())
            {
                Session["proid"] = dr1[0].ToString();
                proname = dr1["proname"].ToString();
                proprice = dr1["proprice"].ToString();
                proimg = dr1["proimg"].ToString();

            }
        }
        cn.Close();
        if (!IsPostBack)
        {
            fillcat();
        }

    }

    void fillcat()
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e) // for Coupon code
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        pnl_rating.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e) // for Review
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        pnl_rating.Visible = false;
    }

    protected void btn_cart_Click(object sender, EventArgs e)
    {
        int rate = Rating1.CurrentRating;
       
        try
        {
            umobno = Session["umobileno"].ToString();

            cn.Open();
            q = "Select * from cart where umobileno=" + umobno + "and cart_itemdetail='" + proname + "'";
            cmd = new SqlCommand(q, cn);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.HasRows)
            {
                   while (dr1.Read())
                   {
                        cartid = Convert.ToInt32(dr1[0]);
                        q2 = Convert.ToInt32(dr1[7]) + Convert.ToInt32(ddl_qty.SelectedValue);
                        carttotal = Convert.ToInt32(proprice) * (q2);
                   }
                
               
                //cart
                if(q2 <= 5)
                {
                    cn1.Open();
                    q1 = "Update cart Set cart_qty=" + q2 + ",cart_total=" + carttotal + " where cartid=" + cartid + "";
                    cmd1 = new SqlCommand(q1, cn1);
                    cmd1.ExecuteNonQuery();
                    cn1.Close();
                }

                //rating
                cn1.Open();
                q = "select * from rating where umobileno ='" + Session["umobileno"].ToString() + "' and proname ='" + proname + "'";
                cmd = new SqlCommand(q, cn1);
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Response.Write("<script>alert('You already gave a rating..');window.open('addtocart.aspx','_SELF');</script>");
                }
                else
                {
                    cn2.Open();
                    q1 = "insert into rating values('" + umobno + "','0','0','"+ proname + "','" + rate + "','0')";
                    cmd1 = new SqlCommand(q1, cn2);
                    cmd1.ExecuteNonQuery();
                    cn2.Close();
                }
                cn1.Close();

            }

            else
            {
                
                prototal = Convert.ToInt32(proprice) * Convert.ToInt32(ddl_qty.SelectedValue);
                cn1.Open();
                q1 = "insert into cart Values(" + proid + "," + umobno + ",'" + proimg + "','" + proname + "'," + proprice + "," + ddl_size.SelectedValue + "," + ddl_qty.SelectedValue + "," + prototal + ",'0','0')";
                cmd1 = new SqlCommand(q1, cn1);
                cmd1.ExecuteNonQuery();
                cn1.Close();
                
                
                //Rating 
                
                cn1.Open();
                q = "select * from rating where umobileno ='" + Session["umobileno"].ToString() + "' and proname ='" + proname + "'";
                cmd = new SqlCommand(q, cn1);
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Response.Write("<script>alert('You already gave a rating..');window.open('addtocart.aspx','_SELF');</script>");
                }
                else
                {
                    cn2.Open();
                    q1 = "insert into rating values('" + umobno + "','0','0','" + proname + "','" + rate + "','0')";
                    cmd1 = new SqlCommand(q1, cn2);
                    cmd1.ExecuteNonQuery();
                    cn2.Close();
                }
                cn1.Close();
            }
            cn.Close();

            Response.Redirect("addtocart.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('You Are Not Login');window.open('home.aspx','_SELF');</script>");
        }

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        try
        {
            umobno = Session["umobileno"].ToString();

            cn.Open();
            q = "update rating set name='" + txtname.Text + "', eid='" + txtemail.Text + "', rmsg='" + txtmsg.Text + "' where umobileno ='" + umobno + "' and proname ='" + proname + "'";
            cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('rating are submitted...');</script>");
            cn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('You Are Not Login');window.open('quickview.aspx','_SELF');</script>");
        }
        txtname.Text = "";
        txtemail.Text = "";
        txtmsg.Text = "";
        
    }
    protected void btn_pin_Click(object sender, EventArgs e)
    {
       
    }
    protected void btn_pin_Click1(object sender, EventArgs e)
    {
        pnl_pin.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e) // for View Rating
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        pnl_rating.Visible = true;
    }
}