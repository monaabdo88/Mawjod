<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"
    style="background-image: url(img/bg-1.jpg)">
    <form id="form2" runat="server">
    <!-- banner Page
    ==========================================-->
    <style>
        #bs-example-navbar-collapse-1
        {
            display: none !important;
        }
    </style>
    <div id="home-banner" style="background-image: url(img/bg-1.jpg);">
        <div class="content text-right">
            <div class="container" data-wow-duration="1s">
                <h1 class="wow fadeInUp text-center">
                    MOBILE first APPROACH!
                </h1>
                <div class="clearfix">
                </div>
                <div id="users-buttons" class="row">
                    <div class="col-md-4 user-part">
                        <img class="img-responsive user-icon" src="img/hajj.png" alt="حاج" />
                        <a class="btn btn-outline-default wow fadeInLeft user-btn" href="PilgrimLogin.aspx">
                            حاج</a>
                    </div>
                    <div class="col-md-4 user-part">
                        <img class="img-responsive user-icon" src="img/wsalni.png" alt="كشافة" />
                        <a class="btn btn-outline-default wow fadeInLeft user-btn" href="scoutLogin.aspx">كشافة</a>
                    </div>
                    <div class="col-md-4 user-part">
                        <img class="img-responsive user-icon" src="img/hamlati.png" alt="حملة" />
                        <a class="btn btn-outline-default wow fadeInLeft user-btn" href="campaignLogin.aspx">حملة</a>
                    </div>
                </div>
            </div>
            <!--  <a class="btn btn-outline-default wow fadeInLeft" href="#">Contact us</a> 
        <a class="btn btn-info chooser-btn wow fadeInRight" href="#">Start FREE Trial</a>-->
        </div>
    </div>
    <!-- about us Page
    ==========================================-->
    <%--<section id="about-us-block">
  <div class="container">
    <div class="row"> 
      <!--section-title-->
      <div class="section-title text-center">
        <h2 class="wow fadeInUp">About us</h2>
        <p class="wow zoomIn">Alice wondered a little at this, but she was too much in awe of the Queen to disbelieve it. 'I'll try it when I go home,' she thought to herself.</p>
      </div>
      <!--/section-title--> 
      
      <!--col-1-->
      <div class="col-md-4 col-sm-4 col-about-us wow fadeInLeft"> <i class="fa fa-clock-o"></i>
        <h4>History</h4>
        <p>This sounded a very good reason, and Alice was quite pleased to know it. 'I never thought of that before!' she said.</p>
      </div>
      <!--/col-1--> 
      
      <!--col-2-->
      <div class="col-md-4 col-sm-4 col-about-us wow zoomIn"> <i class="fa fa-clock-o"></i>
        <h4>Expertise</h4>
        <p>She gave my mother such a turn, that I have always been convinced I am indebted to Miss Betsey for having been born on a Friday.</p>
      </div>
      <!--/col-2--> 
      
      <!--col-3-->
      <div class="col-md-4 col-sm-4 col-about-us wow fadeInRight"> <i class="fa fa-clock-o"></i>
        <h4>Future plans</h4>
        <p>Looking cautiously round, to ascertain that they were not overheard, the two hags cowered nearer to the fire, and chuckled heartily.</p>
      </div>
      <!--/col-3--> 
      
    </div>
  </div>
</section>--%>
    <script type="text/javascript">
        $('.imgUpload').on('click', function () {
            $('.uploadFile').click();
        });
    </script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        });
        $('#kashafa').modal({
            backdrop: 'static',
            keyboard: false
        })

    </script>
    <script>
        new WOW().init();
    </script>
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
</asp:Content>
