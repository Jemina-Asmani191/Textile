using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    Gallery x = new Gallery();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadgallery.HasFile)
        {
            if (uploadgallery.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadgallery.PostedFile.ContentLength < 900000)
                {
                    fname = uploadgallery.FileName;
                    uploadgallery.SaveAs(Server.MapPath("../Gallery image/" + fname));
                    string qry = "insert into gallery values('" + uploadgallery.FileName + "','" + txtdesc.Text  + "')";
                    x.gallery_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("gallery.aspx");
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
       
    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtdesc.Text = "";

    }

    
}