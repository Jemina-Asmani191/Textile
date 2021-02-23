<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<html>
<head> 
<style type="text/css">  
      html, body, #canvasMap {  
        height: 100%;  
        margin: 0px;  
        padding: 0px  
      }  
    </style> 
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>  
    <script type="text/javascript">
        var map;
        function LoadGoogleMAP() {
            var SetmapOptions = {
                zoom: 10,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('canvasMap'),
      SetmapOptions);
        }

        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);  
  
    </script> 
</head>
<body>
    <form id="form1">



        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h1 class="card-title" style="margin-left: 10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5); color: #ff8533; font-size: 30px; font-family: Rockwell; margin-bottom: 24px; margin-top: 3%; padding-bottom: 8px; line-height: 1.1; margin-right: 10%;">Contact Us </h1>
                                    <br />
                                </div>
                                <div style="width: 80%; margin-left: 10%;">
                                    <p>
                                        <i class="fa fa-industry fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Textile Industry<br /><br />
                                        <i class="fa fa-map-marker fa-lg" aria-hidden="true"></i>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sector 9,<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ved Road,<br /> 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat-395009,<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gujarat – India.<br /><br />
                                        <b><i class="fa fa-phone fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>+91 8238835155<br /><br />
                                        <b><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>textileindustry12@gmail.com<br /><br />
                                        <i class="fa fa-clock-o fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Working Times: 09:00 am – 06:00 pm (Mondays – Saturdays)
                                    </p>
                                </div>
                                <br />
                                <br />
                                <div class="card-body">
                                    <div class="toolbar">
                                    </div>
                                    <center>
                    
                   <div class="table-responsive"> 
                <table id="datatable" class="table table-striped table-bordered table-hover" cellspacing="0" style=" text-align:center; width:80%;"  >
                  <thead style=" background-color:#ff944d; text-align:justify; color:#fff; font-family: Georgia, serif; font-size:16px; ">
                    <tr align="center">
                      <th>Office Name</th>
                      <th>Office Address</th>
                      <th>Phone No</th>
                      <th>Fax</th>
                      <th>Email</th>
                    </tr>
                  </thead>
                  <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="width: 20%; font-family: cursive;"><%#Eval("office_name")%></td>
                    <td style="width: 20%; font-family: cursive;"><%#Eval("office_address")%></td>
                    <td style="width: 10%; font-family: cursive;"><%#Eval("phone_no")%></td>
                    <td style="width: 10%; font-family: cursive;"><%#Eval("fax")%></td>
                    <td style="width: 20%; font-family: cursive;"><%#Eval("email")%></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                  </div>
                </table>
                </center>
              </div>
              </div>
              </div>
              </div>
              </div>
            </FooterTemplate>
        </asp:Repeater>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:constr %>"
            SelectCommand="SELECT * FROM [contact]"
            DeleteCommand="DELETE FROM [contact] WHERE [cid] = @cid"
            InsertCommand="INSERT INTO [contact] ([office_name], [office_address], [phone_no], [fax], [email]) VALUES (@office_name, @office_address, @phone_no, @fax, @email)"
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
        <br /><br /><br /><br />
        <!-- for google map -->
    <div align="center">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3719.05204011391!2d72.81947071398618!3d21.229784885889863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04eb16952fa6d%3A0x7b31edcb7000223c!2sVed%20Rd%2C%20Surat%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1593415220446!5m2!1sen!2sin" width="80%" height="500px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

    </div>




    </form>
    <br />
    <br />
    <br />
    </body>
    </html>
</asp:Content>

