<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="invoicepaytm.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br />
<center><h1 style="color:orange; font-size: xx-large; font-weight: bold;">TRANSACTION DETAILS</h1></center>
<br /><br /><br />

<div style="width: 80%; margin-left: 7%;">
    <h2>
        <asp:Label ID="lblpayment" runat="server" Font-Bold="True" ForeColor=""></asp:Label>
    </h2>
<br /><br />

    <h3>
        <p id="txnid" runat="server"></p>
    </h3>
<br /><br />

    <h3>
        <p id="tdate" runat="server"></p>
    </h3>
<br /><br />

    <h3>
        <p id="tbankname" runat="server"></p>
    </h3>
<br /><br />

    <h3>
        <p id="gwname" runat="server"></p>
    </h3>
<br /><br />

    <h3>
        <p id="ptmode" runat="server"></p>
    </h3>
<br /><br />

    <h3>
        <p id="oid" runat="server"></p>
    </h3>
<br /><br />

    <p>Click Here to go to HOME... </p>
<br />
    <p><asp:Button ID="btnhome" class="btn btn-primary" runat="server" 
        Text="HOME" BackColor="#FF9933" ForeColor="#003300" 
        onclick="btnhome_Click" /></p>

</div>
<br /><br /><br />
</asp:Content>

