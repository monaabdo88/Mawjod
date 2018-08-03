<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
﻿
Partial Class scoutLogin
    Inherits System.Web.UI.Page

=======
﻿Imports System
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
Partial Class scoutLogin
    Inherits System.Web.UI.Page
    Dim con As SqlConnection = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
    Public mailcode As String

    Dim cmd As SqlCommand
    Dim SQLdr As SqlDataReader

    Sub H1_click(ByVal sender As Object, ByVal e As EventArgs)
        Try
            con.Open()
        Catch ex As Exception
            con.Close()
            con.Open()
        End Try
        cmd = New SqlCommand("SELECT Responsible_Email FROM Responsible WHERE Responsible_Email = '" & Text1.Value & "'", con)
        SQLdr = cmd.ExecuteReader
        SQLdr.Read()
        If (SQLdr(0).ToString = Text1.Value) Then
            Label1.Text = "نرجو إدخال الكود المرسل الى بريدك الالكتروني"
            TextBox2.Visible = True
            LinkButton2.Visible = True
            SurroundingSub()


        Else
            Label1.Text = "الايميل غير موجود أو غير صحيح"
        End If


    End Sub
    Sub H2_click(ByVal sender As Object, ByVal e As EventArgs)

        If TextBox2.Value = Session("HCode") Then
            Response.Redirect("CampaignHome.aspx")
        Else
            Label1.Text = "الرمز غير صحيح"
        End If

    End Sub
    Private Sub SurroundingSub()
        mailcode = fillVerCode()
        Session("HCode") = mailcode
        Dim mail As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage("mawjod.webapp@gmail.com", Text1.Value, "confirmatiom code", "The confirmatiom code is:" & Session("HCode"))

        Dim mailAuthenticaion As System.Net.NetworkCredential = New System.Net.NetworkCredential("mawjod.webapp@gmail.com", "Web.app@123")
        Dim mailclient As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
        mailclient.EnableSsl = True
        mailclient.Credentials = mailAuthenticaion
        mail.IsBodyHtml = True
        mailclient.Send(mail)
    End Sub
    Public Function fillVerCode() As String
        Dim Letters As New List(Of Integer)
        'add ASCII codes for numbers
        For i As Integer = 48 To 57
            Letters.Add(i)
        Next
        'lowercase letters
        For i As Integer = 97 To 122
            Letters.Add(i)
        Next
        'uppercase letters
        For i As Integer = 65 To 90
            Letters.Add(i)
        Next
        'select 8 random integers from number of items in Letters
        'then convert those random integers to characters and
        'add each to a string and display in Textbox
        Dim Rnd As New Random
        Dim SB As New System.Text.StringBuilder
        Dim Temp As Integer
        For count As Integer = 1 To 8
            Temp = Rnd.Next(0, Letters.Count)
            SB.Append(Chr(Letters(Temp)))
        Next


        Return SB.ToString
    End Function
>>>>>>> update project files
End Class
