Public Class Registro
    Inherits System.Web.UI.Page
    Dim funcionesGenerales As New FuncionesGenerales
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

    Public Sub inicializarForm()
        Try
            AlertError.Visible = False
            AlertRegistro.Visible = False
            lblAlertError.Text = String.Empty
            lblAlertRegistro.Text = String.Empty
            txtApellidoCasada.Text = String.Empty
            txtConfirmar.Text = String.Empty
            txtContraseña.Text = String.Empty
            txtCorreoCasillero.Text = String.Empty
            txtCorreoElectronico.Text = String.Empty
            txtDireccionDomicilio.Text = String.Empty
            txtDPI.Text = String.Empty
            txtFechaNacimiento.Text = String.Empty
            txtLicenciaConducir.Text = String.Empty
            txtNit.Text = String.Empty
            txtNoTelefono.Text = String.Empty
            txtPirmerNombre.Text = String.Empty
            txtPrimerApellido.Text = String.Empty
            txtSegundoApellido.Text = String.Empty
            txtSEgundoNombre.Text = String.Empty
            txtTelAlternativo.Text = String.Empty
            txtTercerNombre.Text = String.Empty
            ddlComunidadLinguistica.SelectedValue = 0
            ddlDeptoDomicilio.SelectedValue = 0
            ddlDeptoNac.SelectedValue = 0
            ddlMpioDomicilio.SelectedValue = 0
            ddlMpioNac.SelectedValue = 0
            ddlNacionalidad.SelectedValue = 0
            ddlPaisEmision.SelectedValue = 0
            ddlPueblo.SelectedValue = 0
            ddlSexo.SelectedValue = 0
        Catch ex As Exception
            AlertError.Visible = True
            lblAlertError.Text = ex.Message()
        End Try


    End Sub

    Public Function validarForm() As Boolean
        Dim valido As Boolean = True
        Try
            If ddlNacionalidad.SelectedValue = 0 Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Seleccione una nacionalidad"
                valido = False
            ElseIf txtPirmerNombre.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese primer nombre"
                valido = False
            ElseIf txtPrimerApellido.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese primer apellido"
                valido = False
            ElseIf txtNit.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "ingrese NIT"
                valido = False
            ElseIf txtNoTelefono.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese numero de telefono"
                valido = False
            ElseIf txtContraseña.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese una contraseña"
                valido = False
            ElseIf txtConfirmar.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Confirme su contraseña"
                valido = False
            ElseIf txtCorreoCasillero.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese un correo electronico para casillero"
                valido = False
            ElseIf txtCorreoElectronico.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese un correo electronico"
                valido = False
            ElseIf txtDireccionDomicilio.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese direccion de domicilio"
                valido = False
            ElseIf txtDPI.Text = String.Empty Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese numero de DPI"
                valido = False
            ElseIf ckTerminosCondiciones.Checked = False Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Debe aceptar los terminos y condiciones"
                valido = False
            ElseIf txtContraseña.Text <> txtConfirmar.Text Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Las contraseñas no coinciden"
                valido = False
            ElseIf ddlDeptoDomicilio.SelectedValue = 0 Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Seleccione departamento de domicilio"
                valido = False
            ElseIf ddlMpioDomicilio.SelectedValue = 0 Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Seleccione Municipio de domicilio"
                valido = False
            ElseIf ddlSexo.SelectedValue = 0 Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Seleccione el sexo"
                valido = False
            ElseIf funcionesGenerales.correoValido(txtCorreoCasillero.Text) = False Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese un correo valido para su casillero"
                valido = False
            ElseIf funcionesGenerales.correoValido(txtCorreoElectronico.Text) = False Then
                AlertRegistro.Visible = True
                lblAlertRegistro.Text = "Ingrese un correo electronico valido"
                valido = False
            Else
                AlertRegistro.Visible = False
                lblAlertRegistro.Text = ""
                valido = True

            End If

            Return valido
        Catch ex As Exception
            lblAlertError.Text = ex.Message()
            AlertError.Visible = True
        End Try
    End Function

    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Try
            If validarForm() = True Then
                inicializarForm()
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class