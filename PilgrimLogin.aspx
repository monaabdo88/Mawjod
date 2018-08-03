<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PilgrimLogin.aspx.vb" Inherits="Hajj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
    <title></title>
=======
    <title>موجود</title>
>>>>>>> update project files
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css"  href="css/bootstrap-arabic.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
<link rel="stylesheet" type="text/css"  href="style.css"/>
<link rel="stylesheet" type="text/css"  href="css/custemStyle.css"/>
</head>
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
<body>
    <form id="form1" runat="server">
        <div class="pop-cont">


            <h2 class="modal-title" id="H1">أهلا حاج</h2>
            <img class="img-responsive hajj-pop-icon" src="img/hajj.png" />
            <div class="qr-cont">
            <asp:FileUpload ID="FileUpload1" class="uploadFile"  runat="server" />
                                            
                <input id="LBLQRCode" runat="server" type="text" size="16" placeholder="رقم التصريح" class="qrcode-text" />
                <label class="qrcode-text-btn">
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="readQR"> 
                  <button    type="button" class="cust_btn" >دخول</button>
                  </asp:LinkButton> 
                        </label>
                <input class="cust_btn" type="button" value="Go" disabled />
            </div>

        </div>

=======
<body style="background-image: url(img/bg-1.jpg);">
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
       
    <!-- /.container-fluid --> 
    
  </div>
</header>
<div class="clearfix"></div>
   <section>
    <form id="form1" runat="server">
        <div class="pop-cont" style="background:0;background: rgb(0,0,0,0.5);border:0;border-radius:10px;margin:150px auto 0;width:50%;padding:50px 0;">


            <h2 class="modal-title" id="H1" style="color:#fff;">أهلا بك</h2>
            <p class="lead" style="color:lightblue;">الرجاء إلتقاط صورة للكود الموجود على سوار يدك</p>
            <img class="img-responsive hajj-pop-icon" style="background:#fff;border-radius:50%;padding:10px;" src="img/parcode1.png" />
            <div class="qr-cont">
                                            
                <input id="LBLQRCode" runat="server" type="text" size="16" placeholder="رقم التصريح" class="qrcode-text" />
                <asp:FileUpload ID="FileUpload1" class="uploadFile upload-haj-btn" runat="server"  />
                <img src="img/BARCODE.png" class="upload-img" style="left:50%;"/>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <label class="qrcode-text-btn" style="background:none;">
                        </label>
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="readQR"> 
                  <button    type="button" class="cust_btn">دخول</button>

                  </asp:LinkButton> 
                
               <!-- <input class="cust_btn" type="button" value="Go" disabled /> -->
            </div>

        </div>
>>>>>>> update project files
        <script>
            function openQRCamera(node) {
                var reader = new FileReader();
                reader.onload = function () {
                    node.value = "";
                    qrcode.callback = function (res) {
                        if (res instanceof Error) {
                            alert("No QR code found. Please make sure the QR code is within the camera's frame and try again.");
                        } else {
                            node.parentNode.previousElementSibling.value = res;
                        }
                    };
                    qrcode.decode(reader.result);
                };
                reader.readAsDataURL(node.files[0]);
            }

            function showQRIntro() {
                return confirm("Use your camera to take a picture of a QR code.");
            }
    </script>
    </form>
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
</body>
</html>
=======
    </section>
        
</body>
</html>
>>>>>>> update project files
