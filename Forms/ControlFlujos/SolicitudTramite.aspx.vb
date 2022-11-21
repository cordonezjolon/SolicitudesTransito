Public Class SolicitudTramite
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                inicializarForm()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Public Sub inicializarForm()
        lblfechaSolicirtudD.Text = Date.Now.ToShortDateString()
    End Sub
End Class