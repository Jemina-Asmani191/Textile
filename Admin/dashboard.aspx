<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="graphs">
     	<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-first-order fa-3x icon-rounded" style="background-color:#ff6666;" ></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="lblorders" runat="server" Text=""></asp:Label></strong></h5>
                      <span>New Orders</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-product-hunt fa-3x icon-rounded" style="background-color:#4d4dff;"></i>
                    <div class="stats">
                      <h5><strong>
                            <asp:Label ID="lblpro" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Products</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-user user2 icon-rounded" style="background-color:#ff33ff;"></i>
                    <div class="stats">
                      <h5><strong>
                              <asp:Label ID="lblusr" runat="server" Text=""></asp:Label></strong></h5>
                      <span>New Users</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users user3 icon-rounded" style="background-color:#ffb84d;"></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="lbladminuser" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Admin User</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>

      <div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-support fa-3x icon-rounded " style="background-color:#ff884d;"></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="lblcurrentopening" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Current Opening</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-pdf-o fa-3x icon-rounded" style="background-color:#ff33ff;"></i>
                    <div class="stats">
                      <h5><strong>
                            <asp:Label ID="lblresume" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Resume Submission</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-picture-o fa-3x icon-rounded" style="background-color:#4d4dff;"></i>
                    <div class="stats">
                      <h5><strong>
                              <asp:Label ID="lblgallery" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Gallery</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-phone fa-3x icon-rounded" style="background-color:#ff6666;"></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="lblcontact" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Contact</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>
      
      <div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-star fa-3x icon-rounded" style="background-color:#ff6666;"></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="lblrating" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Rating</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-comment fa-3x icon-rounded" style="background-color:#4d4dff;"></i>
                    <div class="stats">
                      <h5><strong>
                            <asp:Label ID="lblfeedback" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Feedback</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-comment user2 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>
                              <asp:Label ID="lblvisitors" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Website Visitors</span>
                    </div>
                </div>
        	</div>
        	<%--<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-dollar dollar1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>
                          <asp:Label ID="Label4" runat="server" Text=""></asp:Label></strong></h5>
                      <span>Contact</span>
                    </div>
                </div>
        	 </div>--%>
        	<div class="clearfix"> </div>
      </div>

	   <div class="col-md-4 span_4">
		 <div class="col_2">
		  <div class="box_1">
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
             <a class="tiles_info">
			    <div class="tiles-head red1">
			        <div class="text-center">Category</div>
			    </div>
			    <div class="tiles-body red">
                    <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label>
                </div>
			 </a>
		   </div>
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
              <a class="tiles_info tiles_blue">
			    <div class="tiles-head tiles_blue1">
			        <div class="text-center">Sub-category</div>
			    </div>
			    <div class="tiles-body blue1"><asp:Label ID="lblsubcat" runat="server" Text=""></asp:Label></div>
			  </a>
		   </div>
		   <div class="clearfix"> </div>
		 </div>
		 <div class="box_1">
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
             <a class="tiles_info">
			    <div class="tiles-head fb1">
			        <div class="text-center">State</div>
			    </div>
			    <div class="tiles-body fb2"><asp:Label ID="lblstate" runat="server" Text=""></asp:Label></div>
			 </a>
		   </div>
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
              <a class="tiles_info tiles_blue">
			    <div class="tiles-head tw1">
			        <div class="text-center">City</div>
			    </div>
			    <div class="tiles-body tw2"><asp:Label ID="lblcity" runat="server" Text=""></asp:Label></div>
			  </a>
		   </div>
		   <div class="clearfix"> </div>
		   </div>
		  </div>
		
		</div>
		<div class="clearfix"> </div>
	    </div>
		<div class="copy">
            <p>Copyright &copy; 2020, Textile Industry. All Rights Reserved </p>
	    </div>
		<!--</div>-->
   
</asp:Content>

