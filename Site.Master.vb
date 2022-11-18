Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        repMenu.DataSource = creaMenu()
        repMenu.DataBind()
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
End Class