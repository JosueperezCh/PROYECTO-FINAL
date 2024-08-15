<%-- 
    Document   : Mascotas
    Created on : 10 jul. 2024, 01:58:54
    Author     : JOSUEDAVID
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.RespaldoM"%>
<%@page import="java.util.List"%>
<%@page import="Model.Mascotas"%>
<%@page import="Model.Clientes"%>
<%@page import="Model.Raza"%>
<%@page import="Model.Tipo_Animal"%>
<%@page import="Model.Sexo"%>
<%@page import="Dao.MascotasDao"%>
<%@page import="Dao.RazaDao"%>
<%@page import="Dao.SexoDao"%>
<%@page import="Dao.Tipo_AnimalDao"%>
<%@page import="Dao.ClientesDao"%>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
    </head>
    <body>
        <%!
            MascotasDao mascotasDao = new MascotasDao();
            ClientesDao clientesDao = new ClientesDao();
            RazaDao razaDao = new RazaDao();
            SexoDao sexoDao = new SexoDao();
            Tipo_AnimalDao tipo_AnimalDao = new Tipo_AnimalDao();
        %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Barra Usuario-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="index.jsp">Cerrar Sesion</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">Principal</div>
                            <a class="nav-link" href="menu.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Menu Principal
                            </a>

                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Clientes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Clientes.jsp">Clientes</a>
                                    <a class="nav-link" href="Mascotas.jsp">Mascotas</a>
                                </nav>
                            </div>

                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link" href="Usuarios.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Usuarios
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Gestion Mascotas</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-8"><h3> </h3></div>
                                <div class="col-4 aling-self-center">
                                    <div class="d-grid gap-2">
                                        <button type="button" id="btnAdd" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar</button>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <th>Mascota</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>Dueño</th>
                                    <th>Raza</th>
                                    <th>Sexo</th>
                                    <th>Tipo de Animal</th>
                                    </thead>
                                    <tr>
                                    <tbody>
                                        <%
                                            List<RespaldoM> lista = mascotasDao.listarMascotas();
                                            for (RespaldoM elem : lista) {
                                        %>
                                        <tr>
                                            <td class="nombres"><%=elem.getNombre()%></td>
                                            <td class="f_nacimiento"><%=elem.getF_Nacimiento()%></td>
                                            <td class="cliente"><%=elem.getNombres_Apellidos()%></td>
                                            <td class="raza"><%=elem.getDescripcion()%></td>
                                            <td class="sexo"><%=elem.getSexo()%></td>
                                            <td class="Tipo"><%=elem.getTipo()%></td>
                                            <td colspan="2">
                                                <div class="d-flex gap-2">
                                                    <!-- Boton Eliminar -->
                                                    <form action="${pageContext.servletContext.contextPath}/EliminarUser" method="POST">
                                                        <input type="hidden" name="id" value="">
                                                        <button type="submit" class="btn btn-danger" onclick="return confirm('¿Seguro de eliminar a esta mascota?')">Eliminar</button>
                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                    </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog  modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Mascota</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form action="${pageContext.servletContext.contextPath}/" method="POST" id="form">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Nombre</label>
                                                    <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                                                    <label></label>
                                                </div>
                                                <div class="col-6">
                                                    <label>Fecha de Nacimiento</label>
                                                    <input type="date" name="txtF_Nacimiento" class="form-control" id="txtF_Nacimiento">
                                                    <label></label>
                                                </div>
                                                <tr>
                                                <div class="col-6">
                                                    <select name="txtCli" id="txtCli" class="form-select"required>
                                                        <option value="firts">..Dueño..</option>
                                                        <%
                                                            ArrayList<Clientes> List = clientesDao.mostrarClientes();
                                                            for (Clientes elem : List) {
                                                        %>
                                                        <option value="<%=elem.getIdClientes()%>"><%=elem.getNombres()%></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <div class="d-flex align-items-center">
                                                        <select name="txtRaza" id="txtRaza" class="form-select"required>
                                                            <option value="firts">..Raza..</option>
                                                            <%
                                                                ArrayList<Raza> List1 = razaDao.mostrarRaza();
                                                                for (Raza elem1 : List1) {
                                                            %>
                                                            <option value="<%=elem1.getIdRaza()%>"><%=elem1.getDescripcion()%></option>
                                                            <% } %>
                                                        </select>
                                                        <div class="ms-3">
                                                        <button type="button" class="btn btn-success" onclick="location.href = 'Raza.jsp'">Agregar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <label type="hidden">.</label>
                                                <div class="col-6">
                                                    <select name="txtSexo" id="Sexo" class="form-select"required>
                                                        <option value="firts">..Sexo..</option>
                                                        <%
                                                            ArrayList<Sexo> List2 = sexoDao.mostrarSexo();
                                                            for (Sexo elem2 : List2) {
                                                        %>
                                                        <option value="<%=elem2.getIdSexo()%>"><%=elem2.getDescripcion()%></option>
                                                        <% }%>
                                                    </select>
                                                </div>
                                                <!-- comment -->
                                                <div class="col-6">
                                                    <div class="d-flex align-items-center">
                                                        <select name="txtTipo" id="txtTipo" class="form-select" require>
                                                            <option value="first">..Tipo de Animal. .</option>
                                                            <% ArrayList<Tipo_Animal> Lista3 = tipo_AnimalDao.mostrarTipo_Animal();
                                                                for (Tipo_Animal elem3 : Lista3) {%>
                                                            <option value="<%=elem3.getIdTipo_De_Animal()%>"><%=elem3.getDescripcion()%></option>
                                                            <% }%>
                                                        </select>
                                                        <div class="ms-3"> <button type="button" class="btn btn-success" onclick="location.href = 'Tipo_Animal.jsp'">Agregar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- comment -->
                                            </div>
                                        </div>
                                        <div class="modal-footer">                                                    
                                            <div class="col-12">
                                                <button type="submit" name="btnGuardar" class="btn btn-success">Guardar</button>
                                                <button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div> 
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"> &copy;Colitas Felices 2024</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
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