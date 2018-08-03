<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CampaignHome.aspx.vb" Inherits="CampaignHome" %>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Removing Markers</title>
      <link rel="shortcut icon" href="#" type="image/x-icon"/>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css"  href="css/bootstrap-arabic.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>

<!-- Slider
    ================================================== -->
<link href="css/owl.carousel.css" rel="stylesheet" media="screen"/>
<link href="css/owl.theme.css" rel="stylesheet" media="screen"/>
<link href="css/animate.css" rel="stylesheet" media="screen"/>

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="style.css"/>
<link rel="stylesheet" type="text/css"  href="css/custemStyle.css"/>
<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700|Montserrat:100,200,300,300i,400,500,600,700,800,900|Lato:300,400|Crimson+Text:400,400i,600' rel='stylesheet' type='text/css'/>
    <style type="text/css">
        /* Set the size of the div element that contains the map */
        #mapIn {
            height: 400px; /* The height is 400 pixels */
            width: 100%; /* The width is the width of the web page */
        }
    </style>
    <style>
        /* Always set the map height explicitly to define the size of the div
        * element that contains the map. */
        #map {
            height: 400px; /* The height is 400 pixels */
            width: 100%; /* The width is the width of the web page */
        }
        /* Optional: Makes the sample page fill the window. */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #floating-panel {
            position: absolute;
            top: 10px;
            left: 25%;
            z-index: 5;
            background-color: #fff;
            padding: 5px;
            border: 1px solid #999;
            text-align: center;
            font-family: 'Roboto','sans-serif';
            line-height: 30px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     
        <div class="sub-header"> 
            <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="pull-left">

                <div class="navbar-header">
<%--                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>--%>
                    <a class="navbar-brand" href="index.aspx"> 
                        <img class="logo" style="width:300px; margin-right:-60px" src="img/LOGO5.png" alt="موجود" title="موجود"/> </a>
                </div>
            </div>
            <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                 
                
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="index.html" class="page-scroll active-on">Our Home</a></li>
                    <li>
                        <a href="blog-post.html" class="page-scroll">Single</a>
                        <ul class="sub-menu">
                            <li><a href="#">Sub Menu 1</a></li>
                            <li><a href="#">Sub Menu 2</a></li>
                            <li><a href="#">Sub Menu 3</a></li>
                            <li>
                                <a href="#">Sub Menu 4 </a>
                                <ul>
                                    <li>
                                        <a href="#">Deep Menu 1 </a>
                                        <ul class="sub-menu">
                                            <li><a href="#">Sub Deep 1</a></li>
                                            <li><a href="#">Sub Deep 2</a></li>
                                            <li><a href="#">Sub Deep 3</a></li>
                                            <li><a href="#">Sub Deep 4</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Deep Menu 2</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Sub Menu 5</a></li>
                        </ul>
                    </li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="page.html">Page</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="elements.html">Elements</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>--%>
                <!-- /.navbar-collapse -->
            </div>
      
            </div>
        
            <div id="add map" class="container">
       <h2>أضافة موقع</h2>
    <div class="row add-hamla">
        <div class="row" style="margin-bottom:20px">
   <div class="col-md-6 col-sm-12">
        <h4 class="site-name hamla-kind">نوع ودرجة الحملة</h4>
 <asp:DropDownList ID="DropDownList1" CssClass="col-md-7 dropdown-st" runat="server"></asp:DropDownList>
       </div>
     <div class="col-md-6 col-sm-12">
       <input id="locID" class="site-name" type="text" value="اسم الموقع" runat="server"/>
 <asp:DropDownList ID="DropDownList3" CssClass="col-md-7 dropdown-st" runat="server"><asp:ListItem Text="مزدلفة" Value="مزدلفة"></asp:ListItem>
   <asp:ListItem Text="مكة" Value="مكة"></asp:ListItem>
    <asp:ListItem Text="المدينة" Value="المدينة"></asp:ListItem>
    <asp:ListItem Text="منى" Value="منى"></asp:ListItem>
    <asp:ListItem Text="عرفات" Value="عرفات"></asp:ListItem>
    </asp:DropDownList>
    </div> </div>
     <div class="row">
        <div class="choose-ques col-md-12 col-sm-12">
        <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox>
         <asp:Label ID="Label9" runat="server" Text="هل أنت الآن في هذا الموقع"></asp:Label>
    
         </div>
         <div class="col-md-12 col-sm-12">
             <div class="row">
        <h4 class="site-name hamla-kind col-md-7">حدد موقعك علي الخريطة</h4>
              <asp:Button ID="submitLocation" CssClass="col-md-3 add-btn" runat="server" Text="أضف" /> </div>
         <div id="map" style="width: 425px; height: 350px">
    </div>
   
    
   <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxjIbdREKG94q6KSKN5WGcHQ4YULjOWEQ&callback=initMap">
    </script>
    <script>
        var map;
        var marker;
        var lat;
        var lng;
        function initMap() {
            var mecca = { lat: 21.415201, lng: 39.885914 };

            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 13,
                center: mecca,
                mapTypeId: 'terrain',
            });

            // This event listener will call addMarker() when the map is clicked.
            map.addListener('click', function (event) {
                addMarker(event.latLng);
            });



            // Adds a marker at the center of the map.
        }

        // Adds a marker to the map and push to the array.
        function addMarker(location) {
            if (marker != null) {
                marker.setMap(null);
                markr = null
            }
            marker = new google.maps.Marker({
                position: location,
                map: map
            });
            marker.setMap(map);
            var latLng = String(marker.getPosition()).trim();
            lat = latLng.substring(1, latLng.indexOf(",")).trim();
            lng = latLng.substring(latLng.indexOf(",") + 1, latLng.indexOf(")")).trim();
            document.getElementById("lat1").value=lng;
            document.getElementById("lng1").value=lng;
            submitLocation();
            //marker.getPosition();

        }

        function submitLocation() {
            var locName = document.getElementById('locID').value;
            var cat = document.getElementById('cata');
            cat = cat.options[cat.selectedIndex].value;

            lng=document.getElementById("lng").value; 
            lat = document.getElementById("lat").value;
            document.getElementById('hi').val(lat+"-"+lng);//.innerHTML = lng+"-"+lat;
        }
    </script>
       
  <asp:HiddenField ID="lng1" runat="server" />
       <asp:HiddenField ID="lat1" runat="server" />
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                </div></div> </div>
    </div>
    <div id="peapole_in_Hamlah">
        <div class="container">
        <h2>أفراد الحملة</h2>
        </div>
        
<asp:ListView ID="ListView1" runat="server" GroupItemCount="2" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" DataKeyNames="Pilgrim_ID"  OnPagePropertiesChanging="OnPagePropertiesChanging">
 <LayoutTemplate>
     	<table><asp:PlaceHolder runat="server" ID="groupPlaceHolder1"> </asp:PlaceHolder></table>
    	<tr>
        	<td colspan = "1">
       	<div>
       	<center>
        	<asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="6" >
                 	<Fields>
                 	<asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                        	ShowNextPageButton="False" PreviousPageText= "السابق "/>
                          	<asp:NumericPagerField ButtonType="Link"/>
                         	<asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="False"
                        	ShowNextPageButton="true"  NextPageText="التالي"/>
                    	</Fields>
            	</asp:DataPager>]

       	</center> 

       	</div>
    	</td>
    	</tr>
  </LayoutTemplate>
  <GroupTemplate>
   <tr>
        	<asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
    	</tr>
  </GroupTemplate>
  <GroupSeparatorTemplate>
            	<div id="Div1" runat="server" ></div>
  	</GroupSeparatorTemplate>
	<ItemTemplate><td>
        	<table  cellspacing="0" border="0" style="width: 170px; height:200px; " bgcolor="White">
            	<tr>
                	<td>
                  	 
          <div>	 <div class="col-md-4 col-sm-6 col-xs-12  services-block eq-blocks wow fadeInUp">
            
        <div class="services-content">
          <h6 class="navbar-brand"> "<%# ("Pilgrim_ID")%>" رقم التصريح:  </h6>
          <p class="navbar-brand">   '<%# ("phone")%>' رقم الجوال:  </p>
          <p class="navbar-brand">  '<%# ("Age")%> العمر:   </p>
         <p class="navbar-brand">  '<%#("Current_Status")%>'>الحالة: </p>
            <div><asp:LinkButton ID="LinkButton1" runat="server"> 
          <span class="label label-danger">مفقود</span> </asp:LinkButton> 
          <div><asp:LinkButton ID="LinkButton2" runat="server"> <span class="label label-warning">موجود</span></asp:LinkButton></div>
        </div>  
      </div>
               
 
    	 
   	 </div>   		   
    	 
              </ul>  	</td>            	</tr>
        	</table></td></ItemTemplate></asp:ListView>

</div>

   <div id="help_someone">
<asp:Button ID="Button3" runat="server" Text="ساعد شخص في الوصول إلى حملته"></asp:Button>
  <div id="helpHajj" runat=server class="pop-cont">
           <!-- <h2 class="modal-title" id="H1">أهلا حاج</h2>-->
            <img class="img-responsive hajj-pop-icon" src="img/parcode1.png" />
            <div class="qr-cont">
                                            
                <input id="LBLQRCode" runat="server" type="text" size="16" placeholder="رقم التصريح" class="qrcode-text" />
                <asp:FileUpload ID="FileUpload1" class="uploadFile upload-haj-btn" runat="server"  />
                <img src="img/BARCODE.png" class="upload-img"/>
                <label class="qrcode-text-btn">
                <asp:LinkButton ID="LinkButton3" runat="server"  > 
                  <button    type="button" class="cust_btn" >إدخال</button>
                  </asp:LinkButton> 
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        </label>
               <!-- <input class="cust_btn" type="button" value="Go" disabled /> -->
            </div>
      <asp:ImageButton ID="ImageButton5" runat="server" DescriptionUrl="~/img/MAKKAH.png" />
      <asp:ImageButton ID="ImageButton4" runat="server" DescriptionUrl="~/img/ALMADIENAH.png" />
      <asp:ImageButton ID="ImageButton3" runat="server" DescriptionUrl="~/img/ARAFAT.png" />
      <asp:ImageButton ID="ImageButton2" runat="server" DescriptionUrl="~/img/MINA.png" />
      <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="~/img/MOZDALEFAH.png" />
        </div>

        <div> </div>
</div>
  <div id="mapIn"></div>
    
   </form>
</body>
</html>
