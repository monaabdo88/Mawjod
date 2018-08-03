Imports System
Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient
Imports System.Text
Imports System.Collections.Generic
Imports System.IO
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.Threading.Tasks
Imports AForge.Video
Imports AForge.Video.DirectShow
Imports ZXing
Imports ZXing.QrCode
Partial Class Hajj
    Inherits System.Web.UI.Page
    Dim con As SqlConnection = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
    Dim mailcode As String
    Dim QRNum As String
    Dim cmd As SqlCommand
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
    Dim SQLdr As SqlDataReader
=======
    Dim SQLdr1 As SqlDataReader
>>>>>>> update project files

    Private Sub readqrcode()
        Dim reader = New BarcodeReader()
        Dim fileName = Path.Combine(Request.MapPath("~/Img"), "QRImage.jpg")
        FileUpload1.SaveAs(fileName)
        Dim result = reader.Decode(New Bitmap(fileName))

        If result IsNot Nothing Then
            QRNum = result.Text
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
            LBLQRCode.Value = result.Text
=======
            Session("QRCode") = QRNum
            LBLQRCode.Value = result.Text
            QRNum = Session("QRCode")

            Try
                con.Open()
            Catch ex As Exception
                con.Close()
                con.Open()
            End Try
            Label1.Text = QRNum
            cmd = New SqlCommand("SELECT  Pilgrim_ID FROM Pilgrim WHERE Pilgrim_ID = '" & QRNum & "'", con)
            SQLdr1 = cmd.ExecuteReader
            If (SQLdr1.Read) Then
                If (SQLdr1(0).ToString = QRNum) Then
                    Response.Redirect("pilgrimHome.aspx")
                Else
                    LBLQRCode.Value = "الباركود ليس مسجل كحاج"
                End If
            End If
>>>>>>> update project files
        End If
    End Sub
    Sub readQR(ByVal sender As Object, ByVal e As EventArgs)

        If FileUpload1.HasFile = True Then
            readqrcode()
        Else

            If LBLQRCode.Value IsNot Nothing Then
                QRNum = LBLQRCode.Value
            Else
<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
                LBLQRCode.Value = "أرجو إرفاق صورة الباركود أو كتابة رقم التصريح"
=======
                LBLQRCode.Value = "الرجاء إرفاق صورة الباركود أو كتابة رقم التصريح"
>>>>>>> update project files

            End If


        End If

    End Sub

    Sub enter(ByVal sender As Object, ByVal e As EventArgs)

<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
        Try
            con.Open()
        Catch ex As Exception
            con.Close()
            con.Open()
        End Try
        cmd = New SqlCommand("SELECT  Pilgrim_ID FROM Pilgrim WHERE Pilgrim_ID = '" + QRNum + "'", con)
        SQLdr = cmd.ExecuteReader
        If (SQLdr.Read) Then
            If (SQLdr(0).ToString = QRNum) Then
                Response.Redirect("pilgrimHome.aspx")
            Else
                LBLQRCode.Value = "الباركود ليس مسجل كحاج"
            End If
        End If

=======
       

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
       
>>>>>>> update project files

    End Sub
End Class
