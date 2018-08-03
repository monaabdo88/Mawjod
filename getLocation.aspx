<%@ Page Language="VB" AutoEventWireup="false" CodeFile="getLocation.aspx.vb" Inherits="getLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Hajj Hackathon</title>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxjIbdREKG94q6KSKN5WGcHQ4YULjOWEQ&callback=initMap">
    </script>
    <style type="text/css">
        /* Set the size of the div element that contains the map */
        #map {
            height: 500px; /* The height is 400 pixels */
            width: 100%; /* The width is the width of the web page */
            margin:20px auto;
            clear:both;
            }
    </style>
</head>
<body  style="background-image: url(img/bg-1.jpg);">
    <header id="menutop" > 
  
  <!-- Navigation
    ==========================================-->
  <div id="top-menu" class="navbar navbar-default navbar-fixed-top"> 
    
    <!--Header top-->
     
    <!--/Header top-->
    
    <div class="container"> 

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="pull-left">

                <div class="navbar-header">
<%--                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>--%>
                    <a class="navbar-brand" href="index.aspx"> 
                        <img class="logo" style="width:250px;float:right" src="img/LOGO5.png" alt="موجود" title="موجود"/> </a>
                        <a href="" style="float:left;margin:0 20px;color:#fff;font-size:32px;text-decoration:none;">موقعي</a>
                </div>
            </div>
            </div>
       
    <!-- /.container-fluid --> 
    
  </div>
</header>
<script type="text/javascript">

        //Initialize and add the map
        function initMap() {
        //The location of Uluru,
            var location = '<%= Session("location") %>';
            var latLng = location;
            var lat = latLng.substring(1, latLng.indexOf(",")).trim();
            var lng = latLng.substring(latLng.indexOf(",") + 1, latLng.indexOf(")")).trim();
        var location = new google.maps.LatLng(lat, lng);
        //The map, centered at Uluru
        var map = new google.maps.Map(
            document.getElementById('map'), {
                mapTypeId: 'terrain',//'satellite',
                zoom: 19,
                center: location
            });
        //The marker, positioned at Uluru
        var marker = new google.maps.Marker({position: location, map: map});
        }
    </script>
    <h3></h3>
    <!--The div element for the map -->
    <div class="row">
        <div class="col-md-8 pull-left"><div id="map"></div></div>
        <div class="col-md-4"><p class="lead"><a href="" style="float:left;margin:0 10px;color:#fff;font-size:24px;text-decoration:none;"><img style="width:24px;height:24px;" src="img/left-arrow.png" /> رجوع </a>
                </p></div>
                
    </div>
    
</body>
</html>
