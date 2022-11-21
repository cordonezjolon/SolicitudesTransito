<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="cambioContrasena.aspx.vb" Inherits="TramitesTransitoPNC.cambioContrasena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%-- Carga de fuentes especificas para SB Admin --%>

    <link href="../../Scripts/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <link href="../../Scripts/css/sb-admin-2.css" rel="stylesheet" />
</head>
<body class="bg-gradient-primary">
    <form id="formCambioContraseña" runat="server">


        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-2">Cambio de contraseña</h1>
                                            <p class="mb-4">
                                                Para finaizar el proceso de cambio de contraseña debes ingresar tu contraseña actual y tu nueva contraseña.
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtCorreo" Enabled="false" CssClass="form-control form-control-user" required="true" placeholder="correo electronico" runat="server" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtContrasenaActual" CssClass="form-control form-control-user" required="true" placeholder="Contraseña actual" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtContrasenaNueva" CssClass="form-control form-control-user" required="true" placeholder="Nueva contraseña" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtContrasenaNuevaConfirma" CssClass="form-control form-control-user" required="true" placeholder="Confirmar contraseña" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div runat="server" id="AlertRecuperar" class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <i class="fa fa-bell" aria-hidden="true"></i>
                                            <asp:Label ID="lblAlert" runat="server"></asp:Label>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div runat="server" id="AlertError" class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <asp:Label ID="lblAlertError" runat="server"></asp:Label>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <asp:Button ID="btnResetContrasena" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Cambiar Contraseña" />
                                        <div runat="server" id="alertExitoso" class="alert alert-success alert-dismissible fade show" role="alert">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                            <asp:Label ID="lblAlertSucces" runat="server"></asp:Label>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <hr />
                                        <div class="text-center">
                                            <asp:LinkButton ID="lblVolverLogin" CssClass="small" runat="server">Volver al login</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </form>


    <%-- Carga de librerias javascritp para template SBAdmin  con Bundle Sript--%>
    <%: Scripts.Render("~/bundles/SbAdminJsInternos") %>
</body>
</html>
