<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html>
<head>


</head>


<body>

 


    <form id="form1" >

    <asp:DataList ID="DataList_gallery" runat="server" DataKeyField="gid" 
         RepeatColumns="3" RepeatDirection="Horizontal" Width="80%" 
        DataSourceID="SqlDataSource1">
       <HeaderTemplate>
         <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:100%;    line-height: 1.1; ">Gallery</h1>
                <br />
        </HeaderTemplate>
        <ItemTemplate>

        
        <center>
            <table style="width: 100%; margin-left:25%; font-color:#c52d33; ">
            
            
                <tr >
                     <div style="border:1px;">
                    <td style="padding:5% 10% 1% 10%; ">
                            <img src='../Gallery image/<%#Eval("image") %>' Height="180px" Width="300px" />

                    </div>
                    </td>
                </tr>
                <tr>
                
                    <td style="padding: 0% 10% 0% 10%; width:20%">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("image_desc") %>' 
                            Width="300px" style="font-family:Georgia, serif; font-size:18px;text-align:center" ></asp:Label>
                    </td>
                </tr>
                
            </table>
            </center>
            <br />
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constr %>" 
        SelectCommand="SELECT * FROM [gallery]" 
        DeleteCommand="DELETE FROM [gallery] WHERE [gid] = @gid" 
        InsertCommand="INSERT INTO [gallery] ([image], [image_desc]) VALUES (@image, @image_desc)" 
        
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


        <div class="clearfix"></div>
          
    


</form>
</body>
</html>



</asp:Content>

