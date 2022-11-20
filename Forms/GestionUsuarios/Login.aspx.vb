Imports System.Net


Public Class Login
    Inherits System.Web.UI.Page

    Public funcionesGenerales As New FuncionesGenerales

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
            If validarForm() = 1 Then
                lblAlert.Text = "Ingrese un correo electrónico"
                AlertLogin.Visible = True
            ElseIf validarForm() = 2 Then
                lblAlert.Text = "Ingrese una contraseña"
                AlertLogin.Visible = True
            ElseIf validarForm() = 3 Then
                lblAlert.Text = "Ingrese un correo electrónico valido"
                AlertLogin.Visible = True
            ElseIf validarForm() = 0 Then
                lblAlert.Text = String.Empty
                AlertLogin.Visible = False
            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

    End Sub

    Public Function validarForm() As Integer
        Dim Valido As Integer = 0
        Try
            If txtCorreo.Text = String.Empty Then
                Valido = 1
            ElseIf txtContrasena.Text = String.Empty Then
                Valido = 2
            ElseIf funcionesGenerales.correoValido(txtCorreo.Text) = False Then
                Valido = 3
            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
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