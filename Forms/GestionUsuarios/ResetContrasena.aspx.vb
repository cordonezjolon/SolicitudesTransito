Public Class ResetContrasena
    Inherits System.Web.UI.Page
    Public FuncionesGenerales As New FuncionesGenerales

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
            If validarForm() = 1 Then
                lblAlert.Text = "Ingrese un correo electronico"
                AlertRecuperar.Visible = True
            ElseIf validarForm() = 2 Then
                lblAlert.Text = "Ingrese un correo electrónico valido"
                AlertRecuperar.Visible = True
            ElseIf validarForm() = 0 Then
                alertExitoso.Visible = True
                lblAlertSucces.Text = "Correo enviado con exito, revise su bandeja"
                btnResetContrasena.Visible = False
                ' inicializarForm()
            End If

        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Sub

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

    Public Function validarForm() As Integer
        Dim Valido As Integer = 0
        Try
            If txtCorreo.Text = String.Empty Then
                Valido = 1
            ElseIf FuncionesGenerales.correoValido(txtCorreo.Text) = False Then
                Valido = 2
            End If
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try

        Return Valido

    End Function


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