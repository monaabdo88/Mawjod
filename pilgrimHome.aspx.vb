
Partial Class pilgrimHome
    Inherits System.Web.UI.Page

<<<<<<< 52f11ac17cdf37e556215e9253796f1a30418b55
=======
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim lng_lat As String
        lng_lat = "(21.415201, 39.885914)"
        'Convert.ToInt32(Request.QueryString("location"))
        Session("location") = lng_lat
    End Sub
>>>>>>> update project files
End Class
