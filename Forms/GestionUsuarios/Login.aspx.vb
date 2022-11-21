Imports System.Net


Public Class Login
    Inherits System.Web.UI.Page

    Private funcionesGenerales As New FuncionesGenerales
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

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Try
            If validarForm() = True Then
                Dim data As New Usuario

                data.correo = txtCorreo.Text
                data.password = txtContrasena.Text
                Dim objetoRespuesta As Usuario = conexionServicios.enviaDatosPost(Of Usuario)("Usuarios/ObtenerUsuario", data)
                If objetoRespuesta.id_usuario > 0 Then
                    Session("dataUsuario") = objetoRespuesta
                    Response.Redirect("~/Default.aspx")
                Else
                    lblAlert.Text = "Datos de autenticacion incorrectos."
                    AlertLogin.Visible = True
                End If

            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Public Function validarForm() As Boolean
        Dim valido As Boolean = True
        Try
            If txtCorreo.Text = String.Empty Then
                lblAlert.Text = "Ingrese un correo electrónico"
                AlertLogin.Visible = True
                valido = False
            ElseIf txtContrasena.Text = String.Empty Then
                lblAlert.Text = "Ingrese una contraseña"
                AlertLogin.Visible = True
                valido = False
            ElseIf funcionesGenerales.correoValido(txtCorreo.Text) = False Then
                lblAlert.Text = "Ingrese un correo electrónico valido"
                AlertLogin.Visible = True
                valido = False
            Else
                lblAlert.Text = String.Empty
                AlertLogin.Visible = False
            End If
            Return Valido
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
            valido = False
        End Try



        Return Valido

    End Function

    Public Sub inicializarForm()
        Try
            txtContrasena.Text = String.Empty
            txtCorreo.Text = String.Empty
            lblAlert.Text = String.Empty
            AlertLogin.Visible = False
            AlertError.Visible = False
            lblAlertError.Text = String.Empty
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Public Sub direccionarRegistro()
        Try
            Response.Redirect("Registro.aspx")
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Public Sub direccionarResetContra()
        Try
            Response.Redirect("ResetContrasena.aspx")
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Protected Sub lbtnRecuperarContraseña_Click(sender As Object, e As EventArgs) Handles lbtnRecuperarContraseña.Click
        Try
            inicializarForm()
            direccionarResetContra()
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Protected Sub lbtnRegistrarme_Click(sender As Object, e As EventArgs) Handles lbtnRegistrarme.Click
        Try
            direccionarRegistro()
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub
End Class