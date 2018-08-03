<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="campaignLogin.aspx.vb" Inherits="campaign" %>
=======
﻿﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="campaignLogin.aspx.vb" Inherits="campaign" %>
>>>>>>> update project files

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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

            <h5 class="modal-title" id="exampleModalLabel">أهلا بك</h5>

            <h4 class="text-left phone-h">الرجاء إدخال بريدك الإلكتروني لإمكانية التسجيل</h4>
            <div class="row">
                <input id="Text1" d="TextBox1" runat="server" type="text" class="form-control input-pop" placeholder="البريد الإلكتروني" />
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server"> <button type="button" class="btn btn-primary btn-padding pull-left cust_btn" OnClick="kH1_click">إدخال</button></asp:LinkButton>
                        </ContentTemplate>
                    </asp:UpdatePanel>
               

            </div>
            <span id="Label2" runat="server"></span>
            <div class="clearfix"></div>
            <div class="smscode">
                
                    <input id="TextBox2" runat="server" type="text" class="form-control sms-input" placeholder="كود التأكيد" />
           
                    <button type="button" class="btn btn-primary btn-padding cust_btn">إدخال</button>
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
        <div class="pop-cont" style="background:0;background: rgb(0,0,0,0.5);border:0;border-radius:10px;margin:100px auto 0;width:50%;padding:50px 0;">

            <h5 class="modal-title" style="color:#fff;" id="exampleModalLabel">أهلا بك</h5>
            <p class="lead" style="color:lightblue">الرجاء إدخال بريدك الإلكتروني لإمكانية التسجيل</p>
            <img width="200px" src="img/hamlati.png" />
<%--            <h4 class="text-left phone-h" style="color:#fff;">الرجاء إدخال بريدك الإلكتروني لإمكانية التسجيل</h4>--%>
            <div class="col-md-8 col-md-offset-2" style="margin-top:30px">
                <input id="Text1" runat="server" type="text" class="form-control input-pop" placeholder="البريد الإلكتروني" />
<%--                   OnClick="H1_click"--%>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="H1_click"> 
                            <button type="button" class="btn btn-primary btn-padding pull-left cust_btn" >إدخال</button></asp:LinkButton> </div>
            <asp:Label ID="Label1" runat="server" Text="" class="pull-left"></asp:Label>
            <div class="clearfix"></div>
            <div class="col-md-8 col-md-offset-2 smscode">
                
                    <input id="TextBox2" runat="server" type="text" Visible=false class="form-control sms-input" style="float:none" placeholder="كود التأكيد" />
            
                            <asp:LinkButton ID="LinkButton2"  Visible=false runat="server" OnClick="H2_click"> <button type="button" class="btn btn-primary btn-padding cust_btn " OnClick="H2_click">إدخال</button></asp:LinkButton>
                        
                      </div>
>>>>>>> update project files

           
        </div>
 
    </form>
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
=======
</section>
>>>>>>> update project files
</body>
</html>