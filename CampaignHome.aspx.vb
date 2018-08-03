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
Partial Class CampaignHome
    Inherits System.Web.UI.Page

    Dim location As String
    Dim comuser As New SqlCommand
    Dim con As SqlConnection = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
    Dim com As SqlCommand
    Dim ID_Camaign_ID As Integer
    Dim Camaign_ID As Integer
    Dim SQLdr As SqlDataReader
    Dim mailcode As String
    Dim QRNum As String
    Dim cmd As SqlCommand
    Dim SQLdr1 As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ID_Camaign_ID = 100100 'Session("Campaign_ID")
        H_L_list()
        BindListView()


        
    End Sub
 

    Protected Sub OnPagePropertiesChanging(ByVal sender As Object, ByVal e As PagePropertiesChangingEventArgs)
        TryCast(ListView1.FindControl("DataPager1"), DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, False)
        Me.BindListView()
    End Sub

    Private Sub H_L_list()
        Using con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
            Using cmd As New SqlCommand()
                cmd.CommandText = "SELECT DISTINCt Campaign.Category  FROM Campaign  where Responsible_ID ='" & ID_Camaign_ID & "'"
                cmd.Connection = con
                Using sda As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable()
                    sda.Fill(dt)
                    Dim ds As New DataSet()
                    sda.Fill(ds)
                    DropDownList1.DataSource = ds.Tables(0)
                    DropDownList1.DataTextField = "Category"
                    DropDownList1.DataBind()
                End Using
            End Using
        End Using

        
    End Sub

    Private Sub BindListView()
        Using con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
            Using cmd As New SqlCommand()
                cmd.CommandText = " SELECT DISTINCT Pilgrim.phone, Pilgrim.Pilgrim_ID, Pilgrim.pilgrim_Name, Pilgrim.age, Status.Current_Status FROM Pilgrim INNER JOIN Campaign ON Pilgrim.Campaign_ID = Campaign.Campaign_ID AND Campaign.Responsible_ID = '" & ID_Camaign_ID & "' INNER JOIN Status ON Pilgrim.Pilgrim_ID = Status.Pilgrim_ID ORDER BY Pilgrim.pilgrim_Name  "
                cmd.Connection = con
                Using sda As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable()
                    sda.Fill(dt)
                    ' Label7.Text = dt.Rows(0)("phone").ToString()
                    ListView1.DataSource = dt
                    ListView1.DataBind()
                End Using
            End Using
        End Using
    End Sub


    
    Sub M_click(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Sub A_click(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Private Sub ns()

        Dim connectionString As String = System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString
        Dim dt As New DataTable()
        Dim conn As New SqlConnection(connectionString)
        Using conn
            Dim ad As New SqlDataAdapter("  " & "" & ")", conn)
            ad.Fill(dt)
        End Using

        Try
            ' ID_Camaign_ID= dt.Rows(0)("UserName").ToString()
            
        Catch ex As Exception
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        End Try

    End Sub

    
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        location = "مكة"
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        location = "المدينة"
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        location = "عرفات"
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        location = "منى"
    End Sub

    Protected Sub ImageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        location = "مزدلفة"
    End Sub
    Private Sub getLogandLat()

    End Sub

    Protected Sub submitLocation_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submitLocation.Click
        Dim CurrntLoc As Boolean
        Try
            con.Open()
        Catch ex As Exception
            con.Close()
            con.Open()
        End Try
        If lat1.Value <> "" And lng1.Value <> "" Then




            If CheckBox1.Checked = True Then
                CurrntLoc = True
            Else
                CurrntLoc = False
            End If
 

                Try

                    Using con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Mawjod").ConnectionString)
                        Using cmd As New SqlCommand()
                            cmd.CommandText = "SELECT DISTINCt  Camaign_ID FROM Campaign  where Responsible_ID ='" & ID_Camaign_ID & "' and Category ='" & DropDownList1.SelectedValue & "'"
                            cmd.Connection = con
                            Using sda As New SqlDataAdapter(cmd)
                                Dim dt As New DataTable()
                                sda.Fill(dt)
                                Camaign_ID = dt.Rows(0)("Camaign_ID").ToString()
                            End Using
                        End Using
                    End Using

                    Dim insertQ As String


                    insertQ = "INSERT INTO Location  (Campaign_ID,Location_Name , Current_Location, Location_Latitude, Location_Longitude) VALUES (@Campaign_ID , @Location_Name , @Current_Location, @Location_Latitude, @Location_Longitude)"

                    com = New SqlCommand(insertQ, con)
                    com.Parameters.AddWithValue("@Campaign_ID", Camaign_ID)
                    com.Parameters.AddWithValue("@Location_Name", DropDownList1.SelectedItem)
                    com.Parameters.AddWithValue("@Current_Location", CurrntLoc)
                    com.Parameters.AddWithValue("@Location_Latitude", lat1.Value)
                    com.Parameters.AddWithValue("@Location_Longitude", lng1.Value)
                    If Label6.Text = "" Then
                        com.ExecuteNonQuery()
                    End If

                Catch ex As Exception
                    Label7.Text = "تم إضافة الموقع"

                    con.Close()
                End Try
                con.Close()



        Else
            Label7.Text = " error .. "
        End If
    End Sub
    Private Sub readqrcode()
        Dim reader = New BarcodeReader()
        Dim fileName = Path.Combine(Request.MapPath("~/Img"), "QRImage.jpg")
        FileUpload1.SaveAs(fileName)
        Dim result = reader.Decode(New Bitmap(fileName))

        If result IsNot Nothing Then
            QRNum = result.Text
            LBLQRCode.Value = result.Text
        End If
    End Sub
    Sub readQR(ByVal sender As Object, ByVal e As EventArgs)

        If FileUpload1.HasFile = True Then
            readqrcode()
        Else

            If LBLQRCode.Value IsNot Nothing Then
                QRNum = LBLQRCode.Value
            Else
                LBLQRCode.Value = "أرجو إرفاق صورة الباركود أو كتابة رقم التصريح"

            End If


        End If

    End Sub

    Sub enter(ByVal sender As Object, ByVal e As EventArgs)


    End Sub
 
    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click

        Try
            con.Open()
        Catch ex As Exception
            con.Close()
            con.Open()
        End Try
        cmd = New SqlCommand("SELECT  Pilgrim_ID FROM Pilgrim WHERE Pilgrim_ID = '" + QRNum + "'", con)
        SQLdr1 = cmd.ExecuteReader
        If (SQLdr1.Read) Then
            If (SQLdr1(0).ToString = QRNum) Then
                Response.Redirect("pilgrimHome.aspx")
            Else
                LBLQRCode.Value = "الباركود غير مسجل كحاج"
            End If
        End If

    End Sub

   
     
End Class
