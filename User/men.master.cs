using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_men : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    string qry1;
    string qry;
    SqlDataAdapter dap = new SqlDataAdapter();
    DataSet ds = new DataSet(); 
    string ct;
    SqlDataReader dr;


    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            fillcat();
        }
    }

    void fillcat()
    {

        cn1.Open();
        qry = "select cname from category where status=1";
        dap = new SqlDataAdapter(qry, cn1);
        dap.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            TreeNode tn = new TreeNode(ds.Tables[0].Rows[i][0].ToString());
            tn.Value = ds.Tables[0].Rows[i][0].ToString();
            //tn.ImageUrl = "images/2.png";
            TreeView1.Nodes.Add(tn);
        }
        
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        string k = Convert.ToString(TreeView1 .SelectedValue );
        TreeView1.SelectedNode.ChildNodes.Clear();

        if(TreeView1 .SelectedNode .ChildNodes .Count == 0)
        {
            cn1.Open();
            qry = "select subcatid,subcatname from subcategory where status=1 and catid=(select cid from category where cname='" + k + "')";
            dap = new SqlDataAdapter(qry, cn1);
            dap.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                TreeNode ct = new TreeNode(ds.Tables[0].Rows[i][1].ToString());
                ct.Value = ds.Tables[0].Rows[i][0].ToString();
                //ct.ImageUrl = "images/2.png";
                TreeView1.SelectedNode.ChildNodes.Add(ct);
                ct.NavigateUrl = "product.aspx?id=" + ct.Value;
            }
            cn1.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?catid=" + DropDownList1.SelectedValue);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        cn1.Open();
        qry = "select * from product where proname LIKE '" + txt_ser.Text + "%'";
        cmd = new SqlCommand(qry, cn1);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Response.Redirect("~/user/searchbox.aspx?proname=" + txt_ser.Text);
        }
        else
        {
            Response.Write("<script>alert('Invalid Searching Data..')</script>");
            txt_ser.Text = "";
        }
        cn1.Close();
    }
    protected void btn_community_Click(object sender, EventArgs e)
    {
        //cn1.Open();
        //qry1 = "insert into community_poll values('" + Session["umobileno"].ToString() + "','" + RadioButtonList1.SelectedItem.Value + "')";
        //cmd = new SqlCommand(qry1, cn1);
        //cmd1.ExecuteNonQuery();
        //Response.Write("<script>alert('Community will be submitted....')</script>");
        //cn1.Close();

    }
}

