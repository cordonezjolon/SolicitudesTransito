<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="TramitesTransitoPNC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Inicio</h1>
           
        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Solicitudes Registradas Card -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Solicitudes registradas
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">5</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Solicitudes activas Card -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    Solicitudes activas
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">1</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Notificaciones Card -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                    Notificaciones
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-bell fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Previos Card -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                    Previos
                                </div>
                                <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">2</div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-exclamation-triangle fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <!-- Contenido Row -->

        <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow mb-4">
                    <!-- Titulo de Card -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Bandeja de solicitudes</h6>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm"><i
                        class="fas fa-plus fa-sm text-white-50"></i>Nueva solicitud</a>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <div class="chart-area">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"> <i class="fas fa-calendar fa-1x text-gray-200"></i> Mis solicitudes</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"> <i class="fas fa-exclamation-triangle fa-1x text-gray-200"></i> Previos</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"> <i class="fas fa-bell fa-1x text-gray-300"></i> Notificaciones</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                 <%-- Panel solicitudes activas --%>

                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                 <%-- Panel previos --%>

                                </div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                 <%-- Panel notificaciones --%>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


    </div>

</asp:Content>
