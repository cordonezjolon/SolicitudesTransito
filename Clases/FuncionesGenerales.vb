Public Class FuncionesGenerales
    Public Function correoValido(correo As String) As Boolean
        Dim regexPattern As String = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$"
        Dim emailRegEx As System.Text.RegularExpressions.Regex = New System.Text.RegularExpressions.Regex(regexPattern)
        Dim result As Boolean = emailRegEx.IsMatch(correo)
        Return result
    End Function


End Class
