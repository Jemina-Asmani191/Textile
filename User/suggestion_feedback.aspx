<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="suggestion_feedback.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="contact">
		<div class="container">
			<div class="contact-grids">
				
				<div class="clearfix"> </div>
			</div>
			
			<h3 class="tittle">Suggestion / Feedback</h3>
			<form id="form1" >
            <center>
				<div class="contact-form2">
                    <asp:TextBox ID="txtname" runat="server" type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="" ></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtemail" runat="server" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required=""></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtphone" runat="server" value="Phone No" required=""></asp:TextBox><br /><br />
                   
                    
                   <asp:DropDownList ID="ddlpurpose" runat="server" 
                         style="padding:10px;width:49%;padding-left:10px;padding-top:10px;font-size:15px" 
                         ForeColor="#999999" >
                        <asp:ListItem>Select Purpose</asp:ListItem>
                        <asp:ListItem>Compliment</asp:ListItem>
                        <asp:ListItem>Suggestion</asp:ListItem>
                        <asp:ListItem>complaint</asp:ListItem>
                        <asp:ListItem>Enquiry</asp:ListItem>
                    </asp:DropDownList><br />
                     <asp:TextBox ID="txtsugges" runat="server" type="text" value="Suggestion" placeholder="suggestion" required="" 
                        TextMode="MultiLine" style="width:49%;"></asp:TextBox><br /><br />
                    


                    <asp:Button ID="btnsubmit" class="btn btn-primary" runat="server" Text="Submit" 
                         Width="97px" onclick="btnsubmit_Click"  />

                           <asp:Button ID="btnreset" class="btn btn-primary" runat="server" Text="Reset" 
                         Width="97px" onclick="btnreset_Click"  />
             
				</div>
                </center>
			</form>
		</div>
	</div>




</asp:Content>

