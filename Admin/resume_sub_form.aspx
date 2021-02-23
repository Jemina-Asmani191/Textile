<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="resume_sub_form.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Resume Submission  Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
           <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="rid" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="rid" HeaderText="Resume Id" ReadOnly="True" 
                           SortExpression="rid" />
                       <asp:BoundField DataField="firstname" HeaderText="Firstname" SortExpression="firstname" />
                       <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
                       <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                       <asp:BoundField DataField="phone" HeaderText="Phone No" SortExpression="phone" />
                       <asp:BoundField DataField="experience" HeaderText="Experience" SortExpression="experience" />
                       <asp:BoundField DataField="post" HeaderText="Post" SortExpression="post" />
                       <asp:BoundField DataField="resume_file" HeaderText="Resume File" SortExpression="resume_file" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               </div>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [resume] WHERE [rid] = @rid" 
                   InsertCommand="INSERT INTO [resume] ([firstname], [lastname], [email], [phone], [experience], [post], [resume_file]) VALUES (@firstname, @lastname, @email, @phone, @experience, @post, @resume_file)" 
                   SelectCommand="SELECT * FROM [resume]" 
                   
                  
                  UpdateCommand="UPDATE [resume] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [phone] = @phone, [experience] = @experience, [post] = @post, [resume_file] = @resume_file WHERE [rid] = @rid">
                   <DeleteParameters>
                       <asp:Parameter Name="rid" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="firstname" Type="String" />
                       <asp:Parameter Name="lastname" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="phone" Type="String" />
                       <asp:Parameter Name="experience" Type="String" />
                       <asp:Parameter Name="post" Type="String" />
                       <asp:Parameter Name="resume_file" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="firstname" Type="String" />
                       <asp:Parameter Name="lastname" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="phone" Type="String" />
                       <asp:Parameter Name="experience" Type="String" />
                       <asp:Parameter Name="post" Type="String" />
                       <asp:Parameter Name="resume_file" Type="String" />
                       <asp:Parameter Name="rid" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved.</p>
   </div>
   </div>


</asp:Content>

