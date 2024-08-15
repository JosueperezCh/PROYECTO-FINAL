/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

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
public class EliminarTipo_Animal extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                int idTipo_De_Animal = Integer.parseInt(request.getParameter("idTipo_De_Animal"));
                Tipo_AnimalDao tipo_AnimalDao = new Tipo_AnimalDao();
                
                int filasAfectadas = tipo_AnimalDao.eliminarTipo_Animal(idTipo_De_Animal);
                
                if (filasAfectadas >0){
                    request.setAttribute("message", "Tipo de Animal eliminada Correctamente");
                } else {
                    request.setAttribute("message", "Error al Eliminar Tipo de Animal");
                }
                
                request.getRequestDispatcher("/Tipo_Animal.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                request.setAttribute("error", "ID tipo de animal no válido");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            } catch (Exception e){
                e.printStackTrace();
                request.setAttribute("error", "Ocurrio un error inesperado: " + e.getMessage());
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
