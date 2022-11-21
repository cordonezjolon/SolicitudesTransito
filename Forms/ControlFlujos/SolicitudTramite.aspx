<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SolicitudTramite.aspx.vb" Inherits="TramitesTransitoPNC.SolicitudTramite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">

        <!-- Contenido Row -->

        <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow mb-4">
                    <!-- Titulo de Card -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-center">

                        <h5 class="card-title m-0 font-weight-bold text-primary">Formulario de tramite del departamento de transito de la PNC</h5>
                        <br />


                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <h5 class="card-subtitle m-0 font-weight-bold text-primary justify-content-center">Formulario DT-AJ-001</h5>
                        <hr />
                        <div class="row">
                            <div class="col-sm-6">
                                <p class="card-text" style="font-size: 12px">*Información Necesaria: Para el llenado del siguiente formulario, verificar dentro del anexo el tipo de tramite que desea realizar y los requisitos que se necesitan adjuntar.  </p>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <asp:Label ID="lblFechaSolicitd" runat="server" Text="Fecha de Solicitud: "></asp:Label>
                                        <asp:Label ID="lblfechaSolicirtudD" runat="server" Text="" Font-Bold="True"></asp:Label>
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:Label ID="lblNoSol" runat="server" Text="No. Solicitud"></asp:Label>
                                        <asp:Label ID="lblNoSolicitud" runat="server" Text=""></asp:Label>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <%--informacion del solicitante / informacion del tercero quien realiza--%>
                        <br />

                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblInfoSolicitante" runat="server" Text="1. Información del solicitante" Font-Bold="True"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblLugarDondeRealizaSol" runat="server" Text="Lugar donde realiza la solicitud: "></asp:Label>
                                <asp:TextBox ID="txtLugarDondeRealizaSol" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblNoDPIPasaporteQR" runat="server" Text="No. DPI o Pasaporte"></asp:Label>
                                <asp:TextBox ID="txtNoDPIPasaporteQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblNacionalidadQR" runat="server" Text="Nacionalidad"></asp:Label>
                                <asp:TextBox ID="txtNacionalidadQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblNoLicenciaCQR" runat="server" Text="No. Licencia de conducir: "></asp:Label>
                                <asp:TextBox ID="txtNoLicenciaCQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblPaisEmisionLicenciaQR" runat="server" Text="Pais de emision de licencia: "></asp:Label>
                                <asp:TextBox ID="txtPaisEmisionLicenciaQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblTipoLicenciaQR" runat="server" Text="Tipo de licencia"></asp:Label>
                                <asp:TextBox ID="txtTipoLicenciaQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblCorreoElectronicoQR" runat="server" Text="Correo electronico"></asp:Label>
                                <asp:TextBox ID="txtCorreoElectronicoQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblTelefonosQR" runat="server" Text="Telefonos"></asp:Label>
                                <asp:TextBox ID="txtTelefonosQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblEmpleadoPublicoQR" runat="server" Text="*En caso de ser funcionario o empleado publico, indique institucion y puesto que ocupa: "></asp:Label>
                                <asp:TextBox ID="txtEmpleadoPublicoQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblSolPorAbogadoQR" runat="server" Text="*En caso de realizar solicitud por medio de abogado, colocar No. Abogado: "></asp:Label>
                                <asp:TextBox ID="txtSolPorAbogadoQR" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />

                        <div class="row">

                            <div class="col-sm-6">
                                <asp:Label ID="lblInfoTercero" runat="server" Text="2. Información del tercero quien realiza solicitud" Font-Bold="True"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblNombreQuienRealizaTramite" runat="server" Text="Nombre de quien realiza el tramite: "></asp:Label>
                                <asp:TextBox ID="txtNombreQuienRealizaTramite" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblNoDPIPasaporteIT" runat="server" Text="No. DPI o Pasaporte"></asp:Label>
                                <asp:TextBox ID="txtNoDPIPasaporteIT" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblParentescoIT" runat="server" Text="Parentesco"></asp:Label>
                                <asp:TextBox ID="txtParentescoIT" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblCorreoElecIT" runat="server" Text="Correo electronico"></asp:Label>
                                <asp:TextBox ID="txtCorreoElecIT" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblTelefonosIT" runat="server" Text="Telefonos"></asp:Label>
                                <asp:TextBox ID="txtTelefonosIT" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <br />
                        <div class="row">

                            <div class="col-sm-6">
                                <asp:Label ID="lblDatosVehiculo" runat="server" Text="3. Datos del Vehiculo" Font-Bold="True"></asp:Label>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblNombrePropietarioIV" runat="server" Text="Nombre del propietario"></asp:Label>
                                <asp:TextBox ID="txtNombrePropietarioIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblBoletaInfraccionIV" runat="server" Text="No. Boleta / Infraccion de transito: "></asp:Label>
                                <asp:TextBox ID="txtBoletaInfraccionIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblPlacaIV" runat="server" Text="Placa: "></asp:Label>
                                <asp:TextBox ID="txtPlacaIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblTipoVehiculoIV" runat="server" Text="Tipo de Vehiculo: "></asp:Label>
                                <asp:TextBox ID="txtTipoVehiculoIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblModeloIV" runat="server" Text="Modelo: "></asp:Label>
                                <asp:TextBox ID="txtModeloIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblMarcaIV" runat="server" Text="Marca : "></asp:Label>
                                <asp:TextBox ID="txtMarcaIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lblChasisIV" runat="server" Text="Chasis: "></asp:Label>
                                <asp:TextBox ID="txtChasisIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblMotorIV" runat="server" Text="Motor: "></asp:Label>
                                <asp:TextBox ID="txtMotorIV" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="col-sm-6">
                            <asp:Label ID="lblInfoProblematica" runat="server" Text="4. Informacion de la problematica" Font-Bold="True"></asp:Label>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblLugarDondeSeConsignoIP" runat="server" Text="*Lugar donde se encuentra su vehiculo consignado: "></asp:Label>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtLugarDondeSeConsignoIP" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblNoOficioConsignacionIP" runat="server" Text="No. oficio de consignacion: "></asp:Label>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtNoOficioConsignacionIP" CssClass="form-control form-control-user" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblMotivoConsigancionIP" runat="server" Text="Motivo de consignacion: "></asp:Label>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtMotivoConsigancionIP" CssClass="form-control form-control-user" runat="server" TextMode="MultiLine" ReadOnly="False" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblMotivoOposicionIP" runat="server" Text="Motivo de oposicion: "></asp:Label>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtMotivoOposicionIP" CssClass="form-control form-control-user" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblResumenSoliIP" runat="server" Text="Resumen de la solicitud: "></asp:Label>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtResumenSoliIP" CssClass="form-control form-control-user" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-10"></div>
                            <div class="col-sm-2">

                                <asp:Button ID="btnEnviarFormulario" CssClass="btn btn-primary" runat="server" Text="Enviar Formulario" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


    </div>


</asp:Content>
