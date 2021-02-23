<%@ Page Title="" Language="C#" MasterPageFile="~/User/after_usr.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- banner -->
<div class="banner-grid">
	<div id="visual">
			<div class="slide-visual">
				<!-- Slide Image Area (1000 x 424) -->
				<ul class="slide-group">
					<li><img class="img-responsive" src="discount/slider1.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="discount/slider4.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="discount/slider11.jpg" alt="Dummy Image" /></li>
				</ul>

				<!-- Slide Description Image Area (316 x 328) -->
				<div class="script-wrap">
					<ul class="script-group">
						<li><div class="inner-script"><img class="img-responsive" src="discount/slider11_small.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="discount/slider1_small.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="discount/slider4_small.jpg" alt="Dummy Image" /></div></li>
					</ul>
					<div class="slide-controller">
						<a href="#" class="btn-prev"><img src="images/btn_prev.png" alt="Prev Slide" /></a>
						<a href="#" class="btn-play"><img src="images/btn_play.png" alt="Start Slide" /></a>
						<a href="#" class="btn-pause"><img src="images/btn_pause.png" alt="Pause Slide" /></a>
						<a href="#" class="btn-next"><img src="images/btn_next.png" alt="Next Slide" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="js/pignose.layerslider.js"></script>
	<script type="text/javascript">
	//<![CDATA[
	    $(window).load(function () {
	        $('#visual').pignoseLayerSlider({
	            play: '.btn-play',
	            pause: '.btn-pause',
	            next: '.btn-next',
	            prev: '.btn-prev'
	        });
	    });
	//]]>
	</script>

</div>
<!-- //banner -->
<!-- content -->

<!-- //content -->

<!-- content-bottom -->
<!-- //content-bottom -->
<br /><br />
<!-- Latest Design --> 

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
           <div class="product-easy">
	        <div class="container">
		
		<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#horizontalTab').easyResponsiveTabs({
		            type: 'default', //Types: default, vertical, accordion           
		            width: 'auto', //auto or any width like 600px
		            fit: true   // 100% fit in a container
		        });
		    });
							
		</script>
		<div class="sap_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
					<%--<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Special Offers</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Collections</span></li> --%>
				</ul>				  	 
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
        </HeaderTemplate>
        <ItemTemplate>
              <div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src='../Admin/upload/<%#Eval("proimg") %>' alt="" class="pro-image-front" height="250px">
									<img src='../Admin/upload/<%#Eval("probimg") %>' alt="" class="pro-image-back" height="250px">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href='quickview.aspx?proid=<%#Eval("proid") %>' class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
									<h4><a href=""><%#Eval("proname") %></a></h4>
									<div class="info-product-price">
										<span class="item_price"><%# "₹ " + Eval("proofferprice") %></span>
										<del><%# "₹ " + Eval("proprice")%></del>
									</div>
									<%--<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>--%>
								</div>
							</div>
                            <br /><br />
                       </div>
        </ItemTemplate>
        <FooterTemplate>
                    </div>
                   </div>
                  </div>
                 </div>
               </div>
              </div>
        </FooterTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constr %>" 
        SelectCommand="SELECT TOP 4 * FROM [product]"></asp:SqlDataSource>

    
<!-- // Latest Design --> 
    <br />

</asp:Content>

