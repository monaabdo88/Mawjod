<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="scoutLogin.aspx.vb" Inherits="scoutLogin" %>
=======
﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="campaignLogin.aspx.vb" Inherits="campaign" %>
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
<body>
    <form id="form1" runat="server">
        <div class="pop-cont">

            <h5 class="modal-title" id="exampleModalLabel">أهلا بك</h5>
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55

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
            <img width="300px" src="img/wsalni.png" />
            <h4 class="text-left phone-h">الرجاء إدخال بريدك الإلكتروني لإمكانية التسجيل</h4>
            <div class="row">
                <input id="Text1"   runat="server" type="text" class="form-control input-pop" placeholder="البريد الإلكتروني" />
                  
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="H1_click"> 
                            <button type="button" class="btn btn-primary btn-padding pull-left cust_btn" >إدخال</button></asp:LinkButton> </div>
            <asp:Label ID="Label1" runat="server" Text="" class="pull-left"></asp:Label>
            <div class="clearfix"></div>
            <div class="smscode">
                
                    <input id="TextBox2" runat="server" type="text" Visible=false class="form-control sms-input" style="float:none" placeholder="كود التأكيد" />
            
                            <asp:LinkButton ID="LinkButton2"  Visible=false runat="server" OnClick="H2_click"> <button type="button" class="btn btn-primary btn-padding cust_btn " OnClick="H2_click">إدخال</button></asp:LinkButton>
                        
                      </div>
>>>>>>> update project files

           
        </div>
 
    </form>
</body>
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
</html>
=======
</html>
>>>>>>> update project files
