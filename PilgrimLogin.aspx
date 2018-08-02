<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PilgrimLogin.aspx.vb" Inherits="Hajj" %>

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
</body>
</html>
