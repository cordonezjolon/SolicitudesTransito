Public Class SiteMaster
    Inherits MasterPage
    Dim dataUsuario As Usuario
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        inicializarFormulario()

    End Sub

    Private Sub inicializarFormulario()
        dataUsuario = DirectCast(Session("dataUsuario"), Usuario)
        lblNombreUsuario.Text = dataUsuario.nombre
        repMenu.DataSource = creaMenu()
        repMenu.DataBind()
        repNotificaciones.DataSource = cargarNotificaciones()
        repNotificaciones.DataBind()
        repPrevios.DataSource = cargarPrevios()
        repPrevios.DataBind()
        lblContadorNotificaciones.Text = repNotificaciones.DataSource.rows.count()
        lblContadorPrevios.Text = repPrevios.DataSource.rows.count()

    End Sub
    Private Function creaMenu() As DataTable
        Dim menu As DataTable = New DataTable()
        menu.Columns.Add("PageFile", GetType(String))
        menu.Columns.Add("DisplayName", GetType(String))
        menu.Columns.Add("Icon", GetType(String))
        Dim row As DataRow = menu.NewRow()
        row("PageFile") = "home.aspx"
        row("DisplayName") = "Nueva solicitud"
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        row = menu.NewRow()
        row("PageFile") = "Accounts.aspx"
        row("DisplayName") = "Mis Solicitudes"
        row("Icon") = "fa-list"

        menu.Rows.Add(row)
        row = menu.NewRow()
        row("PageFile") = "Logout.aspx"
        row("DisplayName") = "Perfil"
        row("Icon") = "fa-user"

        menu.Rows.Add(row)
        Return menu
    End Function
    Private Function cargarPrevios() As DataTable
        Dim menu As DataTable = New DataTable()
        menu.Columns.Add("FechaPrevio", GetType(String))
        menu.Columns.Add("DescripcionPrevio", GetType(String))
        menu.Columns.Add("Icon", GetType(String))
        Dim row As DataRow = menu.NewRow()
        row("FechaPrevio") = "18 de Noviembre 2022"
        row("DescripcionPrevio") = "El documento DPI no es legible."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        row = menu.NewRow()
        row("FechaPrevio") = "05 de Noviembre 2022"
        row("DescripcionPrevio") = "Debe cargar los documentos legibles."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        row = menu.NewRow()
        row("FechaPrevio") = "04 de Noviembre 2022"
        row("DescripcionPrevio") = "Se genera previo por documento no valido."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        Return menu
    End Function
    Private Function cargarNotificaciones() As DataTable
        Dim menu As DataTable = New DataTable()
        menu.Columns.Add("FechaNotificacion", GetType(String))
        menu.Columns.Add("DescripcionNotificacion", GetType(String))
        menu.Columns.Add("Icon", GetType(String))
        Dim row As DataRow = menu.NewRow()
        row("FechaNotificacion") = "18 de Noviembre 2022"
        row("DescripcionNotificacion") = "Solicitud 100-2022 ha sido aprobada."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        row = menu.NewRow()
        row("FechaNotificacion") = "05 de Noviembre 2022"
        row("DescripcionNotificacion") = "Solicitud 05-2022 ha sido rechazada."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        row = menu.NewRow()
        row("FechaNotificacion") = "04 de Noviembre 2022"
        row("DescripcionNotificacion") = "Solicitud 02-2022 lista para descarga de documentos."
        row("Icon") = "fa-plus"
        menu.Rows.Add(row)
        Return menu
    End Function

    Protected Sub cambiarPass_ServerClick(sender As Object, e As EventArgs)
        Session("proceso") = 1
        Response.Redirect("~/Forms/GestionUsuarios/CambioContrasena.aspx")
    End Sub
End Class