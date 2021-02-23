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

    admin_product x = new admin_product();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {

        if (uploadfrontimage.HasFile)
            {
                string fileextension = System.IO.Path.GetExtension(uploadfrontimage.FileName);
                if (fileextension.ToLower() != ".jpg" && fileextension.ToLower() != ".jpeg" && fileextension.ToLower() != ".png")
                {
                    lbl_message.Text = "only jpg or jpeg file uploaded on front Image...";
                    lbl_message.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    int filesize = uploadfrontimage.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        lbl_message.Text = "Front file size to large...";
                        lbl_message.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        uploadfrontimage.SaveAs(Server.MapPath("~/Admin/upload/" + uploadfrontimage.FileName));
                        lbl_message.Text = "file uploaded Frontend...";
                        lbl_message.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            else
            {
                lbl_message.Text = "select the Front file...";
                lbl_message.ForeColor = System.Drawing.Color.Red;
            }

            if (fileupload_backend.HasFile)
            {
                string fileextension = System.IO.Path.GetExtension(fileupload_backend.FileName);
                if (fileextension.ToLower() != ".jpg" && fileextension.ToLower() != ".jpeg" && fileextension.ToLower() != ".png")
                {
                    lbl_message_backend.Text = "only jpg or jpeg file uploaded on Backend Image...";
                    lbl_message_backend.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    int filesize = fileupload_backend.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        lbl_message_backend.Text = "Backend file size to large...";
                        lbl_message_backend.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        fileupload_backend.SaveAs(Server.MapPath("~/Admin/upload/" + fileupload_backend.FileName));
                        lbl_message_backend.Text = "file uploaded Backend...";
                        lbl_message_backend.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            else
            {
                lbl_message_backend.Text = "select the Backend file...";
                lbl_message.ForeColor = System.Drawing.Color.Red;
            }     
            qry = "insert into product values('"+ ddl_cat .SelectedItem.Value + "' ,'"  + ddl_subcat .SelectedItem .Value + "','" + txtproname . Text + "','" + txtprodesc .Text + "','" + uploadfrontimage.FileName +"','" + fileupload_backend .FileName + "','" + txtproprice .Text + "','" + txtprooffrprice .Text + "','" + ddlstatus.SelectedItem.Value + "')";
            x.admin_product_insert(qry);
            Response.Redirect("product.aspx"); 
    }
    protected void btn_res_Click(object sender, EventArgs e)
    {
        txtproname.Text = "";
        txtprodesc.Text = "";
        txtproprice.Text = "";
        txtprooffrprice.Text = "";

    }
}