﻿Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Optimization

Public Class BundleConfig
    ' Para obtener más información sobre las uniones, visite https://go.microsoft.com/fwlink/?LinkID=303951
    Public Shared Sub RegisterBundles(ByVal bundles As BundleCollection)
        'bundles.Add(New ScriptBundle("~/bundles/WebFormsJs").Include(
        '                "~/Scripts/WebForms/WebForms.js",
        '                "~/Scripts/WebForms/WebUIValidation.js",
        '                "~/Scripts/WebForms/MenuStandards.js",
        '                "~/Scripts/WebForms/Focus.js",
        '                "~/Scripts/WebForms/GridView.js",
        '                "~/Scripts/WebForms/DetailsView.js",
        '                "~/Scripts/WebForms/TreeView.js",
        '                "~/Scripts/WebForms/WebParts.js"))

        bundles.Add(New ScriptBundle("~/bundles/SbAdminJs").Include(
                        "~/Scripts/vendor/jquery/jquery.min.js",
                        "~/Scripts/vendor/bootstrap/js/bootstrap.bundle.min.js",
                        "~/Scripts/vendor/jquery-easing/jquery.easing.min.js",
                        "~/Scripts/js/sb-admin-2.min.js",
                        "~/Scripts/vendor/datatables/jquery.dataTables.min.js",
                        "~/Scripts/vendor/datatables/dataTables.bootstrap4.min.js",
                        "~/Scripts/vendor/chart.js/Chart.min.js",
                        "~/Scripts/Custom/jsPersonalizado.js"
                     ))
        bundles.Add(New ScriptBundle("~/bundles/SbAdminJsInternos").Include(
                        "~/Scripts/vendor/jquery/jquery.min.js",
                        "~/Scripts/vendor/bootstrap/js/bootstrap.bundle.min.js",
                        "~/Scripts/vendor/jquery-easing/jquery.easing.min.js",
                        "~/Scripts/js/sb-admin-2.min.js",
                        "~/Scripts/vendor/datatables/jquery.dataTables.min.js",
                        "~/Scripts/vendor/datatables/dataTables.bootstrap4.min.js",
                        "~/Scripts/vendor/chart.js/Chart.min.js",
                        "~/Scripts/Custom/jsPersonalizado.js"
                     ))


        '' El orden es muy importante para el funcionamiento de estos archivos ya que tienen dependencias explícitas
        'bundles.Add(New ScriptBundle("~/bundles/MsAjaxJs").Include(
        '        "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
        '        "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
        '        "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
        '        "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"))

        ' Use la versión de desarrollo de Modernizr para desarrollar y aprender. Luego, cuando esté listo
        ' para la producción, use la herramienta de compilación disponible en https://modernizr.com para seleccionar solo las pruebas que necesite
        bundles.Add(New ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"))
    End Sub
End Class
