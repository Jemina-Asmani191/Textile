<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
           <h3>Contact Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>

             <div class="form-group">
              <label class="control-label">Office Name</label>
              
                <asp:TextBox ID="txtoffname" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
              <div class="form-group">
              <label class="control-label">Office Address</label>
              
                <asp:TextBox ID="txtoffaddr" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-group">
              <label class="control-label">Phone No</label>
              
                <asp:TextBox ID="txtphno" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
            <div class="form-group">
              <label class="control-label">Fax</label>
              
                <asp:TextBox ID="txtfax" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
            <div class="form-group">
              <label class="control-label">Email</label>
              
                <asp:TextBox ID="txtemail" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
            <div class="form-group">
                
          
            </div>

            <div class="form-group">
           
                <asp:Button ID="btn_add" runat="server" Text="Add" class="btn btn-primary" 
                    onclick="btn_add_Click" />
               
              
                <asp:Button ID="btn_res" runat="server" Text="Reset" class="btn btn-default" 
                    onclick="btn_res_Click"/>

                <br />

                <br />
                <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." 
                       CssClass ="table table-striped table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="cid" HeaderText="Contact Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="cid" />
                        <asp:BoundField DataField="office_name" HeaderText="Office Name" 
                            SortExpression="office_name" />
                        <asp:BoundField DataField="office_address" HeaderText="Office Address" 
                            SortExpression="office_address" />
                        <asp:BoundField DataField="phone_no" HeaderText="Phone No" 
                            SortExpression="phone_no" />
                        <asp:BoundField DataField="fax" HeaderText="Fax" SortExpression="fax" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                      <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        DeleteCommand="DELETE FROM [contact] WHERE [cid] = @cid" 
                        InsertCommand="INSERT INTO [contact] ([office_name], [office_address], [phone_no], [fax], [email]) VALUES (@office_name, @office_address, @phone_no, @fax, @email)" 
                        SelectCommand="SELECT * FROM [contact]" 
                        UpdateCommand="UPDATE [contact] SET [office_name] = @office_name, [office_address] = @office_address, [phone_no] = @phone_no, [fax] = @fax, [email] = @email WHERE [cid] = @cid">
                        <DeleteParameters>
                            <asp:Parameter Name="cid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="office_name" Type="String" />
                            <asp:Parameter Name="office_address" Type="String" />
                            <asp:Parameter Name="phone_no" Type="String" />
                            <asp:Parameter Name="fax" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="office_name" Type="String" />
                            <asp:Parameter Name="office_address" Type="String" />
                            <asp:Parameter Name="phone_no" Type="String" />
                            <asp:Parameter Name="fax" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="cid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            
              
            <br />
          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved.</p>
   </div>
   </div>


</asp:Content>

