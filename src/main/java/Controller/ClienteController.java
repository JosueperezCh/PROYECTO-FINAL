/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Clientes;
import Dao.ClientesDao;

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
public class ClienteController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int id = Integer.parseInt(request.getParameter("txtID"));
            
            String nombres = request.getParameter("txtNombre");
            
            String telefono = request.getParameter("txtTelefono");
            
            String correo = request.getParameter("txtCorreo");
            
            String direccion = request.getParameter("txtDireccion");
            
            String dni = request.getParameter("txtDNI");

            String mensaje = "";
            int res;

            Clientes clientes = new Clientes(id, nombres, telefono, correo, direccion, dni);
            ClientesDao clientesDao = new ClientesDao();

            if (request.getParameter("btnGuardar") != null) {

                res = clientesDao.insertarCliente(clientes);
                if (res != 0) {
                    mensaje = "Registro Agregado";
                }

            } else if(request.getParameter("btnEditar") != null){
                
                res = clientesDao.modificarCliente(clientes);
                if (res != 0){
                    mensaje = "Registro Editado";
                }
            }
            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/Clientes.jsp").forward(request, response);

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
