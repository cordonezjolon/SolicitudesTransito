Public Class MetodosForm
    Public Function fnllenarGridview(ByVal dgv As GridView, ByVal Datos As DataTable) As Boolean
        Try
            dgv.BorderStyle = BorderStyle.None
            dgv.GridLines = GridLines.None
            dgv.DataSource = Datos
            dgv.DataBind()
            'Adds THEAD and TBODY Section.
            If Not Datos Is Nothing Then
                If Datos.Rows.Count() > 0 Then
                    dgv.HeaderRow.TableSection = TableRowSection.TableHeader
                End If
            End If

            'Adds TH element in Header Row.  
            dgv.UseAccessibleHeader = True
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
End Class
