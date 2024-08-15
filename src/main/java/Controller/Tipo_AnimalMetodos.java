/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;


import Model.Tipo_Animal;
import Dao.Tipo_AnimalDao;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author JOSUEDAVID
 */
public class Tipo_AnimalMetodos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int codigo = Integer.parseInt(request.getParameter("txtID"));
            
            String descripcion = request.getParameter("txtDescripcion");
            
            String mensaje = "error";
            int res;
            
            Tipo_Animal ta = new Tipo_Animal(codigo, descripcion);
            Tipo_AnimalDao tipo_AnimalDao = new Tipo_AnimalDao();
            
            if(request.getParameter("btnGuardar") != null){
                res = tipo_AnimalDao.insertarTipo_Animal(ta);
                if(res != 0){
                    mensaje = "Registro Agregado";
                }
            } else if (request.getParameter("btnEditar") != null){
                res = tipo_AnimalDao.modificarTipo_Animal(ta);
                if (res != 0){
                    mensaje = "Registro Editado";
                }
            }
            request.setAttribute("mensaje", mensaje);
            request.getRequestDispatcher("/Tipo_Animal.jsp").forward(request, response);
            
        } catch(Exception e){
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
