<%@ Page Title="" Language="C#" MasterPageFile="~/User/after_usr.master" AutoEventWireup="true" CodeFile="tracking.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Tracking -->
                
                <!-- /.Tracking -->
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    <section class="pt-50 pb-120 tracking-wrap">    
                    <div class="theme-container container ">  
                        <div class="row pad-10">
                            <div class="col-md-8 col-md-offset-2 tracking-form wow fadeInUp">     
                                <h2 class="title-1"> track your product </h2> <span class="font2-light fs-12">Now you can track your product easily</span><br /><br />
                                <div class="row">
                                    <form id="form1" action="">
                                        <div class="col-md-7 col-sm-7">
                                            <div class="form-group">
                                                
                                                <asp:TextBox ID="txtorderid" runat="server" type="text" placeholder="Enter your order ID" required="" class="form-control box-shadow"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-5">
                                            <div class="form-group">
                                                
                                                <asp:Button ID="btntrack" runat="server" class="btn-1" 
                                                    Text="track your product" onclick="btntrack_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>    
                        </div>
                       
                       <center>
                       <div style="padding-left:auto;float:center;">
                            <div class="row">
                            
                            <div class="col-md-5 pad-30 wow fadeInRight"> 
                               
                                <div class="prod-info white-clr">

                                    <ul>
                                        <li> <span class="title-2">Customer Name:</span> <span class="fs-16"><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span> </li>
                                        <li> <span class="title-2">Mobile No:</span> <span class="fs-16"><asp:Label ID="lblmobno" runat="server" Text=""></asp:Label></span> </li>
                                        <li> <span class="title-2">Order id:</span> <span class="fs-16"><asp:Label ID="lbloid" runat="server" Text=""></asp:Label></span> </li>
                                        <li> <span class="title-2">order date:</span> <span class="fs-16"><asp:Label ID="lblodate" runat="server" Text=""></asp:Label></span> </li>
                                        <li> <span class="title-2">order status:</span> <span class="fs-16 theme-clr">On Process</span> </li>
                                        <li> <span class="title-2">Net Total:</span> <span class="fs-16"><asp:Label ID="lblnettot" runat="server" Text=""></asp:Label></span> </li>
                                        
                                    </ul>
                                </div>
                                
                            </div>
                            </div>
                         </div>
                        </center>
                        <br /><br /><br /><br />
                       

    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>

    <div class="progress-wrap">
        <div class="">
            <img src="images/LoadingBar.gif"  height="50px" width="100%" />
        </div>
    <div class="row progress-content upper-text">
        <div class="col-md-3 col-xs-8 col-sm-2">
            <p class="fs-12 no-margin"> FROM </p>
            <h2 class="title-1 no-margin">London</h2>
        </div>
                                
        <div class="col-md-2 col-xs-8 col-sm-2 text-right" style="padding-left:850px;">
            <p class="fs-12 no-margin"> to </p>
            <h2 class="title-1 no-margin">dhaka</h2>
           </div>
                            </div>
                       </div>
                       
    
    
    </ProgressTemplate>
    </asp:UpdateProgress>



                        <br /><br /><br />
                       </div> 
                  
                </section>


    </ContentTemplate>
    </asp:UpdatePanel>

    
                        

    

</asp:Content>

