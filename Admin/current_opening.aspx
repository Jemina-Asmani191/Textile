<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="current_opening.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Current Opening</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
            <div class="form-group">
              <label class="control-label">Position</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txtposition" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>

            <div class="form-group">
              <label class="control-label">Minimum Qualification</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txtmin_quali" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>

            <div class="form-group">
              <label class="control-label">Eligibility</label>
                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:TextBox ID="txteligi" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
             
       
            <div class="form-group">
             
                <asp:Button ID="btn_sub" runat="server" Text="Add" class="btn btn-primary" 
                    onclick="btn_sub_Click" />
             
                <asp:Button ID="btn_res" runat="server" Text="Reset" class="btn btn-default" 
                    onclick="btn_res_Click" />
                
            </div>
            <div class="table-responsive">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="cid" DataSourceID="SqlDataSource1" 
                  EmptyDataText="There are no data records to display." 
                    CssClass="table table-striped table-bordered table-hover" 
                    AllowPaging="True">
                  <Columns>
                      <asp:BoundField DataField="cid" HeaderText="current position Id" ReadOnly="True" 
                          SortExpression="cid" />
                      <asp:BoundField DataField="position" HeaderText="Position" 
                          SortExpression="position" />
                      <asp:BoundField DataField="min_qualification" HeaderText="Minimum Qualification" 
                          SortExpression="min_qualification" />
                      <asp:BoundField DataField="eligibility" HeaderText="Eligibility" 
                          SortExpression="eligibility" />
                      <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                      <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                  </Columns>
              </asp:GridView>
              </div>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:constr %>" 
                  DeleteCommand="DELETE FROM [current_opening] WHERE [cid] = @cid" 
                  InsertCommand="INSERT INTO [current_opening] ([position], [min_qualification], [eligibility]) VALUES (@position, @min_qualification, @eligibility)" 
                  SelectCommand="SELECT * FROM [current_opening]" 
                  
                  UpdateCommand="UPDATE [current_opening] SET [position] = @position, [min_qualification] = @min_qualification, [eligibility] = @eligibility WHERE [cid] = @cid">
                  <DeleteParameters>
                      <asp:Parameter Name="cid" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="position" Type="String" />
                      <asp:Parameter Name="min_qualification" Type="String" />
                      <asp:Parameter Name="eligibility" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="position" Type="String" />
                      <asp:Parameter Name="min_qualification" Type="String" />
                      <asp:Parameter Name="eligibility" Type="String" />
                      <asp:Parameter Name="cid" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            <br />
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

