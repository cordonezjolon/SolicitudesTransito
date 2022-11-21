<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="TramitesTransitoPNC.Registro" %>

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
    <form id="formRegistro" runat="server">

        <div class="container">

            <div class="card o-hidden shadow-lg my-5">
                <div class="card-body">
                    <!-- Nested Row within Card Body -->
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Creacion de usuario</h1>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <label><strong>Información personal</strong></label>
                                        <hr />
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad"></asp:Label>
                                        <asp:DropDownList ID="ddlNacionalidad" CssClass="form-control form-control-user" required="true" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblDPI" runat="server" Text="DPI"></asp:Label>
                                        <asp:TextBox ID="txtDPI" CssClass="form-control form-control-user" required="true" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblCargarDI" runat="server" Text="Subir DPI"></asp:Label>

                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="fuCargarDPI" />
                                            <label class="custom-file-label" for="inputGroupFile02" aria-describedby="fuCargarDPI">seleccionar archivo</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblNIT" runat="server" Text="NIT"></asp:Label>
                                        <asp:TextBox ID="txtNit" CssClass="form-control form-control-user" required="true" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblFechaNac" runat="server" Text="Fecha Nacimiento"></asp:Label>
                                        <asp:TextBox ID="txtFechaNacimiento" CssClass="form-control form-control-user" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblDeptoNac" runat="server" Text="Departamento Nacimiento"></asp:Label>
                                        <asp:DropDownList ID="ddlDeptoNac" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblMpioNac" runat="server" Text="Municipio Nacimiento"></asp:Label>
                                        <asp:DropDownList ID="ddlMpioNac" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblPrimerNombre" runat="server" Text="Primer Nombre"></asp:Label>
                                        <asp:TextBox ID="txtPirmerNombre" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4">
                                        <asp:Label ID="lblSegundoNombre" runat="server" Text="Segundo Nombre"></asp:Label>
                                        <asp:TextBox ID="txtSEgundoNombre" CssClass="form-control form-control-user" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="col-sm-4">
                                        <asp:Label ID="lblTercerNombre" runat="server" Text="Tercer Nombre"></asp:Label>
                                        <asp:TextBox ID="txtTercerNombre" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
                                        <asp:TextBox ID="txtPrimerApellido" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
                                        <asp:TextBox ID="txtSegundoApellido" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblApellidoCasada" runat="server" Text="Apellido de Casada"></asp:Label>
                                        <asp:TextBox ID="txtApellidoCasada" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblNoTelefono" runat="server" Text="Numero Telefono"></asp:Label>
                                        <asp:TextBox ID="txtNoTelefono" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblNoTelAlternativo" runat="server" Text="Telefono Alternativo"></asp:Label>
                                        <asp:TextBox ID="txtTelAlternativo" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                                        <asp:DropDownList ID="ddlSexo" required="true" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblPueblo" runat="server" Text="Pueblo"></asp:Label>
                                        <asp:DropDownList ID="ddlPueblo" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblComunidadLinguistic" runat="server" Text="Comunidad Linguistica"></asp:Label>
                                        <asp:DropDownList ID="ddlComunidadLinguistica" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <label><strong>Información licencia de conducir</strong></label>
                                        <hr />
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                        <asp:Label ID="lblNoLicencia" runat="server" Text="No. Licencia de conducir"></asp:Label>
                                        <asp:TextBox ID="txtLicenciaConducir" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:Label ID="lblPaisEmision" runat="server" Text="Pais de emision"></asp:Label>
                                        <asp:DropDownList ID="ddlPaisEmision" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <label><strong>Información domiciliar</strong></label>
                                        <hr />
                                    </div>

                                </div>
                                <div class="form-group row">

                                    <div class="col-sm-4">
                                        <asp:Label ID="lblDeptoDomiciliar" runat="server" Text="Departamento"></asp:Label>
                                        <asp:DropDownList ID="ddlDeptoDomicilio" required="true" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblMpioDomcilio" runat="server" Text="Municipio"></asp:Label>
                                        <asp:DropDownList ID="ddlMpioDomicilio" required="true" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblDireccionDomicilio" runat="server" Text="Direccion de domicilio"></asp:Label>
                                        <asp:TextBox ID="txtDireccionDomicilio" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <label><strong>Cuenta de usuario y casillero electronico</strong></label>
                                        <hr />
                                    </div>

                                </div>
                                <div class="form-group row">

                                    <div class="col-sm-4">
                                        <asp:Label ID="lblcorreoElectronico" runat="server" Text="Correo Electrónico"></asp:Label>
                                        <asp:TextBox ID="txtCorreoElectronico" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                                        <asp:TextBox ID="txtContraseña" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblConfirmaContraseña" runat="server" Text="Confirmar Contraseña"></asp:Label>
                                        <asp:TextBox ID="txtConfirmar" required="true" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">

                                    <div class="col-sm-4">
                                        <asp:RadioButton ID="rdAdherirseCasillero" runat="server" />
                                        <asp:Label ID="lblAdherirseCasillero" runat="server" Text="Adherirme al casillero electronico"></asp:Label>

                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Label ID="lblCorreoCasillero" runat="server" Text="Correo para casillero Electronico"></asp:Label>
                                        <asp:TextBox ID="txtCorreoCasillero" CssClass="form-control form-control-user" required="true" runat="server" TextMode="Email"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="form-group row">

                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <asp:CheckBox ID="ckTerminosCondiciones" runat="server" />
                                        <small class="text-uppercase font-weight-bold">He leído los   
                                     <a href="#" data-toggle="modal" data-target="#ModalTerminos" class="text-muted">
                                         <span class="nav-link-inner--text"><u>terminos de y condiciones de uso.</u></span>
                                     </a></small>

                                    </div>
                                    <div class="col-sm-3">
                                    </div>
                                </div>


                                <div runat="server" id="AlertRegistro" class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <i class="fa fa-bell" aria-hidden="true"></i>
                                            <asp:Label id="lblAlertRegistro" runat="server"></asp:Label>
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

                                <!-- Logout Modal-->
                                <div class="modal fade" id="ModalTerminos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Terminos y condiciones</h5>
                                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                                            <div class="modal-footer">
                                                <button class="btn btn-primary" type="button" data-dismiss="modal">Cerrar</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <%--botones de enviar o cancelar--%>
                                <div class="form-group row">
                                    <div class="col-sm-4"></div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="btnCancelar" CssClass="btn btn-secondary btn-user btn-lg" runat="server" Text="Cancelar" />
                                        <asp:Button ID="btnEnviar" CssClass="btn btn-primary btn-user btn-lg" runat="server" Text="Enviar" />

                                    </div>
                                    <div class="col-sm-4"></div>

                                </div>
                                <hr />
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
