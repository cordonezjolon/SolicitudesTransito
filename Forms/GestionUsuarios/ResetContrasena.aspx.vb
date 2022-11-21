Public Class ResetContrasena
    Inherits System.Web.UI.Page
    Public funcionesGenerales As New FuncionesGenerales
    Private conexionServicios As New clsConexionServicios
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                inicializarForm()
            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Sub

    Protected Sub btnResetContrasena_Click(sender As Object, e As EventArgs) Handles btnResetContrasena.Click
        Try
            If validarForm() = True Then
                Dim data As New Usuario

                data.correo = txtCorreo.Text
                Dim objetoRespuesta As outputJson = conexionServicios.enviaDatosPost(Of outputJson)("Usuarios/RecuperarPasswordUsuarioSistema", data)
                If objetoRespuesta.id > 0 Then
                    btnResetContrasena.Visible = False
                    alertExitoso.Visible = True
                    AlertRecuperar.Visible = False
                    lblAlertSucces.Text = "Correo enviado con exito, se envio un correo electronico a su bandeja."
                Else
                    lblAlert.Text = "Datos de autenticacion incorrectos."
                    AlertError.Visible = True
                    alertExitoso.Visible = False
                End If
            End If

        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Sub
    Public Function validarForm() As Boolean
        Dim Valido As Boolean = True
        Try
            If txtCorreo.Text = String.Empty Then
                lblAlert.Text = "Ingrese un correo electronico"
                AlertRecuperar.Visible = True
                Valido = False
            ElseIf FuncionesGenerales.correoValido(txtCorreo.Text) = False Then
                lblAlert.Text = "Ingrese un correo electrónico valido"
                AlertRecuperar.Visible = True
                Valido = False


            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
            Valido = False
        End Try

        Return Valido

    End Function

    Public Sub inicializarForm()
        Try

            txtCorreo.Text = String.Empty
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




    Public Sub direccionarlogin()
        Try
            Response.Redirect("Login.aspx")
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Protected Sub lblVolverLogin_Click(sender As Object, e As EventArgs) Handles lblVolverLogin.Click
        Try
            direccionarlogin()
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Sub
End Class