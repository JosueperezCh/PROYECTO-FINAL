<%-- 
    Document   : Registro de Atencion
    Created on : 3 jul. 2024, 18:05:50
    Author     : josue David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistema Veterinaria</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/stylesp.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="menu.jsp">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Principal</div>
                            <a class="nav-link" href="menu.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-menu-button"></i></div>
                                Menu Principal
                            </a>

                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link" href="HistorialClinico.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-person-circle"></i></div>
                                Historial Clinico
                            </a>
                            <a class="nav-link" href="Reportes.jsp">
                                <div class="sb-nav-link-icon"><i class="bi bi-graph-up-arrow"></i></div>
                                Reportes
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- FIN DE BARRA DE MENU -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4" style="text-align: center;">Registro de Atencion</h1> 
                        <div class="text-center mb-3">
                            <img src="css/Registro.img" class="" alt="..." style="width: 500px; height: 350px;">
                        </div>
                    <div class="row">  
                        <div class="col">
                            <input type="time" id="txtHora" name="txtHora"class="form-control input-hora" placeholder="First name">
                        </div>
                        <div class="col mb-3">
                            <input type="date" id="txtFecha" name="txtFecha"class="form-control input-fecha" placeholder="Last name" aria-label="Last name">
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                        <label for="floatingTextarea2">Motivo Visita:</label>
                    </div> 
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                        <label for="floatingTextarea">Estado de Mascota</label>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                        <label for="floatingTextarea2">Diagnostico Generado</label>
                    </div>
                    <div class="row g-3">
                        <div class="col">
                            <label for="exampleFormControlTextarea1" class="form-label">Tratamientos</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                        <div class="col mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Observaciones</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto mb-3">
                        <button class="btn btn-success" type="button">Guardar</button>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
