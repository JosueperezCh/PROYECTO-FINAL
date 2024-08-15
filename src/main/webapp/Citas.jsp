<%-- 
    Document   : Citas
    Created on : 3 jul. 2024, 18:05:43
    Author     : josel
--%>

<%@page import="Model.RespaldoM"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Clientes"%>
<%@page import="Dao.ClientesDao"%>
<%@page import="Dao.MascotasDao"%>
<%@page import="Model.Mascotas"%>
<%@page import="Dao.UsuariosDao"%>
<%@page import="Model.Login"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistema Veterinaria</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/stylesp.css" rel="stylesheet" />
        <link href="css/formcita.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body class="sb-nav-fixed">
        <%
            UsuariosDao usuariosDao = new UsuariosDao();
            MascotasDao mascotasDao = new MascotasDao();
            ClientesDao clientesDao = new ClientesDao();
        %>

        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="menu.jsp">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"></form>
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
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="bi bi-card-checklist"></i></div>
                                Gestiones
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Usuarios.jsp">Usuarios</a>
                                    <a class="nav-link" href="Clientes.jsp">Clientes</a>
                                    <a class="nav-link" href="Mascotas.jsp">Mascotas</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- FIN DE BARRA DE MENU -->
            <div id="layoutSidenav_content">
                <main>
                    <h1 class="centrar">Programar Cita</h1>
                    <form>
                        <div class="form-cita">
                            <div class="mb-3">                           
                                <label for="exampleFormControlInput1" class="form-label">Hora</label>
                                <input type="time" class="form-control" id="exampleFormControlInput1" placeholder="10:45 am">
                            </div>
                            <div class="mb-3">
                                <label for="exampleDataList" class="form-label">Clientes</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected></option>
                                    <%
                                        ArrayList<Clientes> List = clientesDao.mostrarClientes();
                                        for (Clientes elemClientes : List) {
                                    %>
                                    <option value="<%=elemClientes.getIdClientes()%>"><%=elemClientes.getNombres()%></option>
                                    <% } %>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="exampleDataList" class="form-label">Mascota</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected></option>
                                    <%
                                        ArrayList<RespaldoM> List1 = mascotasDao.listarMascotas();
                                        for (RespaldoM elemM : List1) {
                                    %>
                                    <option value="<%=elemM.getIdMascotas()%>"><%=elemM.getNombre()%></option>
                                    <%}%>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="exampleDataList" class="form-label">Veterinario</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected></option>
                                    <%
                                        ArrayList<Login> List2 = usuariosDao.mostrarUsuario();
                                        for (Login elemLogin : List2) {
                                    %>                            
                                    <option value="<%=elemLogin.getIdUsuario()%>"><%=elemLogin.getUsuario()%></option>
                                    <% }%>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">Motivo</label>
                                <input class="form-control" id="exampleFormControlTextarea1" rows="1"></input>
                            </div>
                            <div class="mb-3">
                                <label for="exampleDataList" class="form-label">Estado</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option value>Pendiente</option>
                                </select>
                            </div>
                            <br>                       
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-success" type="button">Agendar</button>
                            </div>
                        </div>
                    </form>
                </main>
                <!--- FOOTER>><!--  -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"> &copy;Colitas Felices 2024</div>
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

