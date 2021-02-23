<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="resume_sub_form.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="contact">
		<div class="container">
			<div class="contact-grids">
				
				<div class="clearfix"> </div>
			</div>
			
			<h3 class="tittle">Resume Submission Form</h3>
			<center>
            <form id="form1" >
				<div class="contact-form2">
                    <asp:TextBox ID="txtfname" runat="server" type="text" value="Firstname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="" ></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtlname" runat="server" type="text" value="Lastname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required=""></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtemail" runat="server" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required=""></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtphone" runat="server" value="Phone No" required=""></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtexperience" runat="server" value="Experience" required=""></asp:TextBox><br /><br />
                    <asp:DropDownList ID="ddlpost" runat="server" 
                         style="padding:10px;width:49%;padding-left:10px;white-space:pre-wrap;padding-top:10px;font-size:15px" 
                         ForeColor="#999999">
                        <asp:ListItem>Apply for post</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Production</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>HR & Admin</asp:ListItem>
                        <asp:ListItem>Accounts</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList><br /><br />

                    <asp:Label ID="lblpdf" runat="server" Text="Resume pdf file:" style="padding-right:450px"></asp:Label>
                    <br />
                <asp:FileUpload ID="uploadresume" runat="server" placeholder="resume pdf file" style="padding:10px;width:49%;padding-left:10px;white-space:pre-wrap;padding-top:10px;font-size:15px" /><br /><br />


                    <asp:Button ID="btnsubmit" class="btn btn-primary" runat="server" Text="Submit" 
                         Width="97px" onclick="btnsubmit_Click" />

                           <asp:Button ID="btnreset" class="btn btn-primary" runat="server" Text="Reset" 
                         Width="97px" onclick="btnreset_Click"  />
             
				    <br />
                    <asp:Label ID="lbl_path" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        ForeColor="#FF3300"></asp:Label>


				</div>
			</form>
            </center>
		</div>
	</div>


</asp:Content>

