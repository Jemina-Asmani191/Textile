using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    resume_form x = new resume_form();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadresume.HasFile)
        {
            if (uploadresume.PostedFile.ContentType == "application/pdf")
            {

                if (uploadresume.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadresume.FileName;
                    uploadresume.SaveAs(Server.MapPath("~/user/PDF_File/" + fname));
                    string qry = "insert into resume values('" + txtfname .Text  + "' ,'" + txtlname .Text + "','" + txtemail .Text + "','" + txtphone .Text  + "','" + txtexperience .Text  + "','" +ddlpost.SelectedItem .Value+ "','" + uploadresume.FileName +"')";
                    x.resume_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Write("<script>alert('Resume successfully submited.....')</script>");
                    Response.Redirect("resume_sub_form.aspx");
                }
                else
                {
                    lbl_path.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path.Text = "please select PDF file";
            }
        }
        else
        {
            lbl_path.Text = "please select PDF file";
     
       }
        

    
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtfname.Text  = "";
        txtlname .Text  = "";
        txtemail.Text = "";
        txtphone .Text  = "";
        txtexperience.Text = "";
    }
}