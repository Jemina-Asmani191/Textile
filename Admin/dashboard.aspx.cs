using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, tpro, tusr, order, user, adminuser, currentopening, resume, gallery, contact, feedback,rating,state,city,subcat,category;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        // for website viewer(visitors)
        lblvisitors.Text = Application["OnlineUsers"].ToString();

        //for product
        cn.Open();
        qry = "select count(*) from product";
        cmd = new SqlCommand(qry, cn);
        tpro = cmd.ExecuteScalar().ToString();
        lblpro.Text = tpro;
        cn.Close();

        //user order for product
        cn.Open();
        qry = "select count(*) from uorder";
        cmd = new SqlCommand(qry, cn);
        order = cmd.ExecuteScalar().ToString();
        lblorders.Text = order;
        cn.Close();

        //for client side users
        cn.Open();
        qry = "select count(*) from user_mstr";
        cmd = new SqlCommand(qry, cn);
        user = cmd.ExecuteScalar().ToString();
        lblusr.Text = user;
        cn.Close();

        //for admin side user
        cn.Open();
        qry = "select count(*) from registration";
        cmd = new SqlCommand(qry, cn);
        adminuser = cmd.ExecuteScalar().ToString();
        lbladminuser.Text = adminuser;
        cn.Close();

        //for currentopening
        cn.Open();
        qry = "select count(*) from current_opening";
        cmd = new SqlCommand(qry, cn);
        currentopening = cmd.ExecuteScalar().ToString();
        lblcurrentopening.Text = currentopening;
        cn.Close();

        //for Resume Submission
        cn.Open();
        qry = "select count(*) from resume";
        cmd = new SqlCommand(qry, cn);
        resume = cmd.ExecuteScalar().ToString();
        lblresume.Text = resume;
        cn.Close();

        //for gallery
        cn.Open();
        qry = "select count(*) from gallery";
        cmd = new SqlCommand(qry, cn);
        gallery = cmd.ExecuteScalar().ToString();
        lblgallery.Text = gallery;
        cn.Close();

        //for Contact
        cn.Open();
        qry = "select count(*) from contact";
        cmd = new SqlCommand(qry, cn);
        contact = cmd.ExecuteScalar().ToString();
        lblcontact.Text = contact;
        cn.Close();

        //for Rating
        cn.Open();
        qry = "select count(*) from rating";
        cmd = new SqlCommand(qry, cn);
        rating = cmd.ExecuteScalar().ToString();
        lblrating.Text = rating;
        cn.Close();

        //for feedback
        cn.Open();
        qry = "select count(*) from feedback";
        cmd = new SqlCommand(qry, cn);
        feedback = cmd.ExecuteScalar().ToString();
        lblfeedback.Text = feedback;
        cn.Close();

        //for Category
        cn.Open();
        qry = "select count(*) from category";
        cmd = new SqlCommand(qry, cn);
        category = cmd.ExecuteScalar().ToString();
        lblcategory.Text = category;
        cn.Close();

        //for Sub-Category
        cn.Open();
        qry = "select count(*) from subcategory";
        cmd = new SqlCommand(qry, cn);
        subcat = cmd.ExecuteScalar().ToString();
        lblsubcat.Text = subcat;
        cn.Close();

        //for State
        cn.Open();
        qry = "select count(*) from state";
        cmd = new SqlCommand(qry, cn);
        state = cmd.ExecuteScalar().ToString();
        lblstate.Text = state;
        cn.Close();

        //for City
        cn.Open();
        qry = "select count(*) from city";
        cmd = new SqlCommand(qry, cn);
        city = cmd.ExecuteScalar().ToString();
        lblcity.Text = city;
        cn.Close();
    }
   
}