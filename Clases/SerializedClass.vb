Public Class SerializedClass
    Public Function TO_JSON() As String
        Dim serializer As New System.Web.Script.Serialization.JavaScriptSerializer()
        Dim strMensaje As String = serializer.Serialize(Me)
        Return strMensaje
    End Function
End Class
