Imports Newtonsoft.Json
Imports System.IO
Imports System.Net

Public Class clsConexionServicios
    Dim urlServicios As String = ConfigurationSettings.AppSettings("urlServicios")

    Public Function obtenerDataListaServicio(ByVal urlServicio As String) As DataTable

        Dim respuestaDatos As DataTable

        Dim request As HttpWebRequest
        Dim response As HttpWebResponse = Nothing
        Dim reader As StreamReader
        Try
            request = DirectCast(WebRequest.Create(urlServicios + urlServicio), HttpWebRequest)
            request.Method = "GET"
            response = DirectCast(request.GetResponse(), HttpWebResponse)
            reader = New StreamReader(response.GetResponseStream())
            Dim serializer As New System.Web.Script.Serialization.JavaScriptSerializer()
            respuestaDatos = JsonConvert.DeserializeObject(Of DataTable)(reader.ReadToEnd())

            reader.Close()
            response.Close()
            Return respuestaDatos
        Catch ex As Exception ' catches any error
            respuestaDatos = Nothing
            Return respuestaDatos
        End Try
        Return Nothing
    End Function
    Public Function enviaDatosPost(Of tipoOut)(ByVal urlServicio As String, data As Object) As tipoOut
        Dim strMensaje As String
        Dim respuestaDatos As tipoOut
        Try

            strMensaje = data.TO_JSON()

            Dim request As WebRequest = WebRequest.Create(urlServicios + urlServicio)
            request.Method = "POST"
            Dim postData As String = strMensaje
            Dim byteArray As Byte() = Encoding.UTF8.GetBytes(postData)
            request.ContentType = "application/json"
            request.ContentLength = byteArray.Length
            Dim dataStream As Stream = request.GetRequestStream()
            dataStream.Write(byteArray, 0, byteArray.Length)
            dataStream.Close()

            Dim response As WebResponse = request.GetResponse()
            Console.WriteLine(CType(response, HttpWebResponse).StatusDescription)
            dataStream = response.GetResponseStream()
            Dim reader As New StreamReader(dataStream)
            Dim serializer As New System.Web.Script.Serialization.JavaScriptSerializer()
            respuestaDatos = JsonConvert.DeserializeObject(Of tipoOut)(reader.ReadToEnd())

            reader.Close()
            response.Close()

            reader.Close()
            dataStream.Close()
            response.Close()

            Return respuestaDatos


        Catch ex As Exception ' catches any error
            respuestaDatos = Nothing
            Return respuestaDatos
        End Try

        Return Nothing
    End Function
End Class
