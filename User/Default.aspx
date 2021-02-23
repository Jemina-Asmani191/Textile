<%@ Page Title="" Language="C#" MasterPageFile="~/User/after_usr.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!-- Tracking -->
                <section class="pt-50 pb-120 tracking-wrap">    
                    <div class="theme-container container ">  
                        <div class="row pad-10">
                            <div class="col-md-8 col-md-offset-2 tracking-form wow fadeInUp" data-wow-offset="50" data-wow-delay=".30s">     
                                <h2 class="title-1"> track your product </h2> <span class="font2-light fs-12">Now you can track your product easily</span><br /><br />
                                <div class="row">
                                    <form class="">
                                        <div class="col-md-7 col-sm-7">
                                            <div class="form-group">
                                                <!--<input type="text" placeholder="Enter your product ID" required="" class="form-control box-shadow">-->
                                                <asp:TextBox ID="txtorderid" runat="server" type="text" placeholder="Enter your order ID" required="" class="form-control box-shadow"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-5">
                                            <div class="form-group">
                                                <!--<button class="btn-1">track your product</button>-->
                                                <asp:Button ID="btntrack" runat="server" class="btn-1" 
                                                    Text="track your product" onclick="btntrack_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>    
                        </div>
                       
                       <center>
                       <div style="padding-left:auto;float:50px">
                        <div class="row">
                            <!--<div class="col-md-7 pad-30 wow fadeInLeft" data-wow-offset="50" data-wow-delay=".30s"> 
                                <img alt="" src="assets/img/block/product-1.jpg" />
                            </div>-->
                            <div class="col-md-5 pad-30 wow fadeInRight" data-wow-offset="50" data-wow-delay=".30s" > 
                               
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
                        
                        <div class="progress-wrap">
                            <div class="progress-status">
                                <span class="border-left"></span>
                                <span class="border-right"></span>
                                <span class="dot dot-left wow fadeIn" data-wow-offset="50" data-wow-delay=".40s"></span>
                                <span class="themeclr-border wow fadeIn" data-wow-offset="50" data-wow-delay=".50s">  <span class="dot dot-center theme-clr-bg"></span> </span>
                                <span class="dot dot-right wow fadeIn" data-wow-offset="50" data-wow-delay=".60s"></span>
                            </div>
                            <div class="row progress-content upper-text">
                                <div class="col-md-3 col-xs-8 col-sm-2">
                                    <p class="fs-12 no-margin"> FROM </p>
                                    <h2 class="title-1 no-margin">London</h2>
                                </div>
                                <div class="col-md-2 col-xs-8 col-sm-3">
                                    <p class="fs-12 no-margin"> [ <b class="black-clr">6 DAYS </b> ] </p>                                
                                </div>
                                <div class="col-md-4 col-xs-8 col-sm-4 text-center">
                                    <p class="fs-12 no-margin"> currently in </p>
                                    <h2 class="title-1 no-margin">singapore</h2>
                                </div>
                                <div class="col-md-1 col-xs-8 col-sm-1 no-pad">
                                    <p class="fs-12 no-margin"> [ <b class="black-clr">2 DAYS </b> ] </p>                                
                                </div>
                                <div class="col-md-2 col-xs-8 col-sm-2 text-right">
                                    <p class="fs-12 no-margin"> to </p>
                                    <h2 class="title-1 no-margin">dhaka</h2>
                                </div>
                            </div>
                        </div>
                        <br /><br /><br />
                    </div>
                </section>
                <!-- /.Tracking -->





</asp:Content>

