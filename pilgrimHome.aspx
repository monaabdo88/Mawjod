<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pilgrimHome.aspx.vb" Inherits="pilgrimHome" %>
=======
﻿﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pilgrimHome.aspx.vb" Inherits="pilgrimHome" %>
>>>>>>> update project files

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
=======
<head id="Head1" runat="server">
    <title></title>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxjIbdREKG94q6KSKN5WGcHQ4YULjOWEQ&callback=initMap">
    </script>
    <style type="text/css">
        /* Set the size of the div element that contains the map */
        #mapIn {
            height: 400px; /* The height is 400 pixels */
            width: 100%; /* The width is the width of the web page */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="na" runat=server >
    
    </div>
    </form>

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
            document.getElementById('mapIn'), {
                mapTypeId: 'terrain', //'satellite',
                zoom: 19,
                center: location
            });
            //The marker, positioned at Uluru
            var marker = new google.maps.Marker({ position: location, map: map });
        }
    </script>
    
    <div id="mapIn"></div>
>>>>>>> update project files
</body>
</html>
