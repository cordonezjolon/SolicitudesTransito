Public Class CambioContrasena
    Inherits System.Web.UI.Page
    Dim correoUsuario As String
    Dim procesoCambio As Integer
    Dim usuarioCambio As Integer
    Private conexionServicios As New clsConexionServicios
    Dim dataUsuario As Usuario
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                If Request.QueryString.AllKeys.Contains("correo") Then
                    correoUsuario = Request.QueryString("correo")
                End If
                If Request.QueryString.AllKeys.Contains("proceso") Then
                    procesoCambio = CType(Request.QueryString("proceso"), Integer)
                End If
                If Request.QueryString.AllKeys.Contains("usuario") Then
                    usuarioCambio = CType(Request.QueryString("usuario"), Integer)
                End If
                If Session("proceso") = 1 Then
                    dataUsuario = DirectCast(Session("dataUsuario"), Usuario)
                    correoUsuario = dataUsuario.correo
                    usuarioCambio = CType(dataUsuario.id_usuario, Integer)
                    lblVolverLogin.Text = "Volver al sistema"
                Else
                    lblVolverLogin.Text = "Volver al login"
                End If
                inicializarForm()
            Else
                If Session("proceso") = 1 Then
                    dataUsuario = DirectCast(Session("dataUsuario"), Usuario)
                    correoUsuario = dataUsuario.correo
                    usuarioCambio = CType(dataUsuario.id_usuario, Integer)
                End If
            End If

        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Sub
    Public Sub inicializarForm()
        Try

            txtCorreo.Text = correoUsuario
            txtContrasenaActual.Text = String.Empty
            txtContrasenaNueva.Text = String.Empty
            txtContrasenaNuevaConfirma.Text = String.Empty
            lblAlert.Text = String.Empty
            AlertRecuperar.Visible = False
            AlertError.Visible = False
            lblAlertError.Text = String.Empty
            alertExitoso.Visible = False
            btnResetContrasena.Visible = True
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Private Sub btnResetContrasena_Click(sender As Object, e As EventArgs) Handles btnResetContrasena.Click
        Try
            If validarFormulario() = True Then
                Dim data As New Usuario
                data.correo = correoUsuario
                data.id_usuario = usuarioCambio
                data.password = txtContrasenaActual.Text.Trim
                data.new_password = txtContrasenaNueva.Text.Trim

                Dim respuestaUsuario As outputJson = conexionServicios.enviaDatosPost(Of outputJson)("Usuarios/CambiarPaswordUsuarioSistema", data)
                If respuestaUsuario.id = 1 Then
                    lblAlertSucces.Text = respuestaUsuario.err
                    alertExitoso.Visible = True
                    AlertError.Visible = False
                Else
                    lblAlertError.Text = respuestaUsuario.err
                    alertExitoso.Visible = False
                    AlertError.Visible = True
                End If
            End If
        Catch ex As Exception

        End Try

    End Sub
    Private Function validarFormulario() As Boolean
        Dim respuesta As Boolean = True
        Try
            If txtContrasenaActual.Text.Trim = String.Empty Or txtContrasenaNueva.Text.Trim = String.Empty _
                Or txtContrasenaNuevaConfirma.Text.Trim = String.Empty Then
                lblAlert.Text = "Debe completar los campos."
                AlertRecuperar.Visible = True
                respuesta = False
            ElseIf txtContrasenaActual.Text.Trim = txtContrasenaNueva.Text.Trim Then
                lblAlert.Text = "La contraseña nueva debe ser distinta a la anterior."
                AlertRecuperar.Visible = True
                respuesta = False
            ElseIf txtContrasenaNuevaConfirma.Text.Trim <> txtContrasenaNueva.Text.Trim Then
                lblAlert.Text = "La contraseña nueva y la contraseña de confirmacion deben coindir."
                AlertRecuperar.Visible = True
                respuesta = False
            End If

        Catch ex As Exception
            lblAlert.Text = "Formulario invalido."
            AlertRecuperar.Visible = True
            respuesta = False
        End Try
        Return respuesta
    End Function

    Private Sub lblVolverLogin_Click(sender As Object, e As EventArgs) Handles lblVolverLogin.Click
        If Session("proceso") = 1 Then
            Response.Redirect("~/Default.aspx")

        Else
            Response.Redirect("~/Forms/GestionUsuarios/Login.aspx")
        End If
    End Sub
End Class