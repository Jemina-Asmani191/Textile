<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="current opening.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<body>


             <form id="form1"> 

             <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #ff8533;
    font-size: 30px;
    margin-bottom: 24px;
    font-family:Rockwell;
    margin-top: 3%;
    padding-bottom: 8px; width:80%;    line-height: 1.1; ">Current Opening</h1>
                <br />

                <center>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="cid" 
                 DataSourceID="SqlDataSource1" RepeatColumns="1" 
                 RepeatDirection="Horizontal" BackColor="White" BorderColor="#D1D1D1" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal" Width="80%" Font-Size="Larger" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged" >
                 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                 <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                 <ItemTemplate>
                     <table>
                    
                         <tr>
                             <td style="width: 90px">
                                 &nbsp;</td>
                             <td style="width: 409px">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label4" runat="server" 
                                     style="margin-left:6%; font-weight: bold;" Text="Position:"></asp:Label>
                                 &nbsp;
                                 <asp:Label ID="Label5" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("position") %>'></asp:Label>
                             </td>
                         </tr>
                         
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label6" runat="server" 
                                     style="margin-left:6%; font-weight: bold;" Text="minimum Qualification:"></asp:Label>
                               &nbsp;
                                 <asp:Label ID="Label7" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("min_qualification") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label8" runat="server" 
                                     style="margin-left:6%; font-weight: bold;" Text="Eligibility:"></asp:Label>
                                     &nbsp;
                                 <asp:Label ID="Label9" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("eligibility") %>'></asp:Label>
                             </td>
                         </tr>
                         
                     </table>
                  <br />
                  <br />
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                         <asp:Button ID="btnapply" class="btn btn-primary" runat="server" Text="Apply Now" 
                         Width="97px" onclick="btnapply_Click" BackColor="#FF6600"/>
                  <br />
                     <br />
                 </ItemTemplate>


                 <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />


             </asp:DataList>
             </center>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Current_Opening] WHERE [cid] = @cid" 
                        InsertCommand="INSERT INTO [Current_Opening] ([position], [min_qualification], [eligibility]) VALUES (@position, @min_qualification, @eligibility)" 
                        SelectCommand="SELECT * FROM [Current_Opening]" 
                        UpdateCommand="UPDATE [Current_Opening] SET [position] = @position, [min_qualification] = @min_qualification, [eligibility] = @eligibility WHERE [cid] = @cid">
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
             


             


             <br /><br /><br />


             


             </form>
             




</asp:Content>

