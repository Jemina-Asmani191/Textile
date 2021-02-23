<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
           <h3>Gallary Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>

           <div class="form-group">
              <label class="control-label"> Gallary Image</label>
               
                    <div class="form-group">
                        
                        <asp:FileUpload ID="uploadgallery" runat="server" 
                            class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                            ng-model="model.name"/>
                    </div>
            </div>





              <div class="form-group">
              <label class="control-label">Gallery Description </label>
              
                <asp:TextBox ID="txtdesc" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
              
            <div class="form-group">
                <asp:Label ID="lbl_path" runat="server"></asp:Label>
          
            </div>

            <div class="form-group">
           
                <asp:Button ID="btn_add" runat="server" Text="Add" class="btn btn-primary" onclick="btn_add_Click" 
                     />
               
              
                <asp:Button ID="btn_res" runat="server" Text="Reset" class="btn btn-default" onclick="btn_res_Click" 
                   />
            </div>
                <br />

                <br />
               <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="gid" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." 
                       CssClass ="table table-striped table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="gid" HeaderText="gallery id" 
                            SortExpression="gid" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="image" HeaderText="image" 
                            SortExpression="image" />
                        <asp:TemplateField HeaderText="image">
                        <ItemTemplate>
                            <img src='../Gallery image/<%#Eval("image") %>' height="80px" width="80px" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="image_desc" HeaderText="image description" 
                            SortExpression="image_desc" />
                        <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                      <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:constr %>" 
                       DeleteCommand="DELETE FROM [gallery] WHERE [gid] = @gid" 
                       InsertCommand="INSERT INTO [gallery] ([image], [image_desc]) VALUES (@image, @image_desc)" 
                       SelectCommand="SELECT * FROM [gallery]" 
                       UpdateCommand="UPDATE [gallery] SET [image] = @image, [image_desc] = @image_desc WHERE [gid] = @gid">
                       <DeleteParameters>
                           <asp:Parameter Name="gid" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="image" Type="String" />
                           <asp:Parameter Name="image_desc" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="image" Type="String" />
                           <asp:Parameter Name="image_desc" Type="String" />
                           <asp:Parameter Name="gid" Type="Int32" />
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

