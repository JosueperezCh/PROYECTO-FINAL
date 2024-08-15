/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Login;
import Dao.UsuariosDao;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author josel
 */
public class UsuarioController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int id = Integer.parseInt(request.getParameter("txtID"));
                        
            String nombre = request.getParameter("txtNombre");

            String correo = request.getParameter("txtCorreo");

            String usuario = request.getParameter("txtUsuario");

            String password = request.getParameter("txtContrasena");

            int cargo = Integer.parseInt(request.getParameter("txtCargo"));

            String mensaje = "";
            int res;
            
            Login usu = new Login(id, nombre, correo, usuario, password, cargo, nombre);
            UsuariosDao usuariosDao = new UsuariosDao();

            if (request.getParameter("btnGuardar") != null) {

                res = usuariosDao.insertarUsuario(usu);
                if (res != 0) {
                    mensaje = "Registro Agregado";

                }

            } else if (request.getParameter("btnEditar") != null) {

                res = usuariosDao.modificarUsuario(usu);
                if (res != 0) {
                    mensaje = "Registro Editado";

                }
            }
            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/Usuarios.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("Error" + e.getLocalizedMessage());
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
