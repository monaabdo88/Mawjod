
Partial Class getLocation
    Inherits System.Web.UI.Page
    'Dim con As SqlConnection = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Database").ConnectionString) 'Mawjod
    'Dim mailcode As String
    'Dim cmd As SqlCommand
    'Dim SQLdr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim id_movie As String
        id_movie = "(21.415201, 39.885914)"
        'Convert.ToInt32(Request.QueryString("location"))
        Session("location") = id_movie
    End Sub
    'Protected String MyProperty { Get { Return "21.415201"; } }

    'Private Sub BindListLocation()
    '    Using con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("").ConnectionString)
    '        Using cmd As New SqlCommand()
    '            cmd.CommandText = "SELECT ID_movie, picture FROM movie ORDER BY dateTime DESC"
    '            cmd.Connection = con
    '            Using sda As New SqlDataAdapter(cmd)
    '                Dim dt As New DataTable()
    '                sda.Fill(dt)
    '                ListView1.DataSource = dt
    '                ListView1.DataBind()
    '            End Using
    '        End Using
    '    End Using
    'End Sub

End Class
