<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Admin Rgistration Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
    
    
            <div class="form-group">
              <label class="control-label">First Name</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txtfnm" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
            <div class="form-group">
              <label class="control-label">Email Id</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txtemail" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name" placeholder="Enter Email Id"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ForeColor="Red" ></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
              <label class="control-label">Password</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name" placeholder="Enter Password" required=""></asp:TextBox>
            </div>
            <div class="form-group">
              <label class="control-label">Profile Pic</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <%--<asp:TextBox ID="uploadprofileimage" runat="server" TextMode="Password"
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name" placeholder="Enter Password" required=""></asp:TextBox>--%>
                <asp:FileUpload ID="uploadprofileimage" runat="server" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name"/>
                <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
            </div>


            <div class="form-group">
             <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:Button ID="btn_add" runat="server" Text="Add" class="btn btn-primary" 
                    onclick="btn_add_Click"/>
               
              <%--<button type="reset" class="btn btn-default">Reset</button>--%>
                <asp:Button ID="btn_res" runat="server" Text="Reset" class="btn btn-default" 
                    onclick="btn_res_Click"/>
                <br />
                <br />
                <br />
                <div class="table-responsive">             
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                      AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered table-hover" BackColor="White" 
                       BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                       ForeColor="Black" GridLines="Vertical" Width="100%">
                      <Columns>
                          <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                              SortExpression="uid" />
                          <asp:BoundField DataField="first_name" HeaderText="first_name" 
                              SortExpression="first_name" />
                          <asp:BoundField DataField="email_id" HeaderText="email_id" 
                              SortExpression="email_id" />
                          <asp:BoundField DataField="password" HeaderText="password" 
                              SortExpression="password" />
                          <asp:TemplateField HeaderText="Profile Image">
                          <ItemTemplate>
                            <img src='images/<%#Eval("profile_pic") %>' height="80px" width="80px" />
                          </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="profile_pic" HeaderText="profile_pic" 
                              SortExpression="profile_pic" />
                          <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" >
                          <ItemStyle ForeColor="#0066CC" />
                          </asp:CommandField>
                      </Columns>
                  </asp:GridView>
                  </div>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:constr %>" 
                      DeleteCommand="DELETE FROM [registration] WHERE [uid] = @uid" 
                      InsertCommand="INSERT INTO [registration] ([first_name], [email_id], [password], [profile_pic]) VALUES (@first_name, @email_id, @password, @profile_pic)" 
                      SelectCommand="SELECT [uid], [first_name], [email_id], [password], [profile_pic] FROM [registration]" 
                      UpdateCommand="UPDATE [registration] SET [first_name] = @first_name, [email_id] = @email_id, [password] = @password, [profile_pic] = @profile_pic WHERE [uid] = @uid">
                      <DeleteParameters>
                          <asp:Parameter Name="uid" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="first_name" Type="String" />
                          <asp:Parameter Name="email_id" Type="String" />
                          <asp:Parameter Name="password" Type="String" />
                          <asp:Parameter Name="profile_pic" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="first_name" Type="String" />
                          <asp:Parameter Name="email_id" Type="String" />
                          <asp:Parameter Name="password" Type="String" />
                          <asp:Parameter Name="profile_pic" Type="String" />
                          <asp:Parameter Name="uid" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                 </div>
              <br />
          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved <%--| Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> --%></p>
   </div>
   </div>

</asp:Content>

