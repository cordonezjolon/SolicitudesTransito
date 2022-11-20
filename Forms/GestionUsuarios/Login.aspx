<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="TramitesTransitoPNC.Login" %>

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
   
    <form id="frmLogin" runat="server">
        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-lg-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4"><strong>Sistema de Control de Trámites</strong></h1>
                                            <h1 class="h4 text-gray-900 mb-4"><strong>- SCT -</strong></h1>
                                        </div>
                                        <hr />
                                        <div class="text-center">
                                            <h4 class="text-gray-900 mb-4">Inicio de sesión</h4>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox id="txtCorreo" CssClass="form-control form-control-user" required="true"  placeholder="correo electronico" runat="server" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox id="txtContrasena" CssClass="form-control form-control-user"  required="true" placeholder="contraseña" runat="server" TextMode="Password"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck" />
                                                <label class="custom-control-label" for="customCheck">Recuerdame</label>
                                            </div>
                                        </div>
                                        <div runat="server" id="AlertLogin" class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <i class="fa fa-bell" aria-hidden="true"></i>
                                            <asp:Label id="lblAlert" runat="server"></asp:Label>
                                              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                              </button>
                                        </div>
                                        <div runat="server" id="AlertError" class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <asp:Label id="lblAlertError" runat="server"></asp:Label>
                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <asp:Button id="btnLogin" CssClass="btn btn-primary btn-user btn-block" runat="server" Text="Iniciar Sesion" />
                                        <hr />
                                        <div class="text-center">
                                            <asp:LinkButton id="lbtnRecuperarContraseña" CssClass="small" runat="server">¿Olvidaste tu contraseña?</asp:LinkButton>
                                        </div>
                                        <div class="text-center">
                                            <asp:LinkButton id="lbtnRegistrarme" CssClass="small" runat="server">Registrarme para obtener acceso al sistema</asp:LinkButton>                                       
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

    <script src="../../Scripts/vendor/jquery/jquery.min.js"></script>
    <script src="../../Scripts/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../Scripts/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="../../Scripts/js/sb-admin-2.min.js"></script>
</body>
</html>
