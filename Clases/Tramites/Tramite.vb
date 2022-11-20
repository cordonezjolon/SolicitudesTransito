Public Class Tramite

    Inherits SerializedClass
    Public Property id_tramite As String
    Public Property id_tipo_tramite As String
    Public Property identificador As String
    Public Property id_flujo As String
    Public Property id_usuario_creacion As String
    Public Property id_primer_usuario_sorteado As String
    Public Property estado As String
    Public Property descripcion As String
    Public Property documentos As List(Of Documento)

End Class
