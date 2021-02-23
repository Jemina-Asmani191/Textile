<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Feedback Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
           <div class="table-responsive">
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="fid" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True">
                   <Columns>
                       <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                           ReadOnly="True" SortExpression="fid" />
                       <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                       <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                       <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                           SortExpression="phoneno" />
                       <asp:BoundField DataField="purpose" HeaderText="purpose" 
                           SortExpression="purpose" />
                       <asp:BoundField DataField="suggestion" HeaderText="suggestion" 
                           SortExpression="suggestion" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>

               </asp:GridView>
           
              
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [feedback] WHERE [fid] = @fid" 
                   InsertCommand="INSERT INTO [feedback] ([name], [email], [phoneno], [purpose], [suggestion]) VALUES (@name, @email, @phoneno, @purpose, @suggestion)" 
                   SelectCommand="SELECT * FROM [feedback]" 
                   UpdateCommand="UPDATE [feedback] SET [name] = @name, [email] = @email, [phoneno] = @phoneno, [purpose] = @purpose, [suggestion] = @suggestion WHERE [fid] = @fid">
                   <DeleteParameters>
                       <asp:Parameter Name="fid" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="phoneno" Type="String" />
                       <asp:Parameter Name="purpose" Type="String" />
                       <asp:Parameter Name="suggestion" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="phoneno" Type="String" />
                       <asp:Parameter Name="purpose" Type="String" />
                       <asp:Parameter Name="suggestion" Type="String" />
                       <asp:Parameter Name="fid" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           
              
               </div>
              
          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved.</p>
   </div>
   </div>
</asp:Content>

