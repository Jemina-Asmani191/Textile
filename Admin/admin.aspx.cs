using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    Admin_registration x = new Admin_registration();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string EnryptString(string strEncrypted)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
        string encrypted = Convert.ToBase64String(b);
        return encrypted;
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadprofileimage.HasFile)
        {
            if (uploadprofileimage.PostedFile.ContentType == "image/jpeg" || uploadprofileimage.PostedFile.ContentType == "image/png")
            {
                if (uploadprofileimage.PostedFile.ContentLength < 900000)
                {
                    fname = uploadprofileimage.FileName;
                    uploadprofileimage.SaveAs(Server.MapPath("~/Admin/upload" + fname));
                    string qry = "insert into registration  values('" + txtfnm.Text + "','" + txtemail.Text + "','" + txtpwd.Text + "','" + uploadprofileimage.FileName + "')";
                    x.register_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    lbl_path.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path.Text = "please select image file";
            }
        }
        else
        {
            lbl_path.Text = "please select image file";
        }

        Response.Redirect("admin.aspx");
    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtfnm.Text = "";
        txtpwd.Text = "";
        txtemail.Text = "";
    }
}