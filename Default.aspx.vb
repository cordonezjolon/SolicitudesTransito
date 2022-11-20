Public Class _Default
    Inherits Page
    Dim metodos As New MetodosForm
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            inicializarFormulario()
        End If
    End Sub
    Private Sub inicializarFormulario()
        metodos.fnllenarGridview(gvNotificaciones, cargarListaNotificaciones)
        metodos.fnllenarGridview(gvPrevios, cargarListaPrevios)
        metodos.fnllenarGridview(gvSolicitudes, cargarListaSolicitudes)
    End Sub
    Private Function cargarListaPrevios() As DataTable
        Return Nothing
    End Function
    Private Function cargarListaNotificaciones() As DataTable
        Return Nothing
    End Function
    Private Function cargarListaSolicitudes() As DataTable
        Return Nothing
    End Function
End Class