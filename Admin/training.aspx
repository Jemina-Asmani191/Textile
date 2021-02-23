<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="training.aspx.cs" Inherits="Admin_Default" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Training and Development page</h3>
        <form runat="server" id="training">
        <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" height="400px"></CKEditor:CKEditorControl>
   <br />
         <div class="form-group">
           
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    class="btn btn-primary" onclick="btn_submit_Click" />
            </div>
            </form>
        </div>
  	    
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved.</p>
   </div>
   




</asp:Content>

