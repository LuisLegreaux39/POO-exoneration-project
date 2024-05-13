/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package rtb.jsp.crud.mnv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import rtb.jsp.crud.mnv.constants.Routes;
import rtb.jsp.crud.mnv.model.Customer;
import rtb.jsp.crud.mnv.services.AuthenticationService;

/**
 *
 * @author PC
 */
@WebServlet(name = "Authentication", urlPatterns = {"/authentication"})
public class AuthenticationController extends HttpServlet {

    AuthenticationService authService = new AuthenticationService();

    /*Constants */
    String parameter_key = "action";

    String log_action = "user.log.in";
    String log_out_action = "user.log.out";

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Authentication</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Authentication at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String access = "";
        String current_action = request.getParameter(this.parameter_key);

        String current_location = request.getServletPath();
        System.out.println(current_location);
        if (current_location.equals("/authentication") & current_action == null) {
            access = Routes.LOGIN.getValue();
        }

        if (current_action != null) {
            if (current_action.equalsIgnoreCase(this.log_out_action)) {
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/main");
                return;
            }
        }
        RequestDispatcher view = request.getRequestDispatcher(access);
        view.forward(request, response);
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
        String access = "";
        String current_action = request.getParameter(this.parameter_key);

        if (current_action.equalsIgnoreCase(this.log_action)) {
            String userName = request.getParameter("user-name");
            Customer currentCustomer = this.authService.doesUserExits(userName);
            if (currentCustomer.getName() != null) {
                HttpSession session = request.getSession();
                session.setAttribute("userId", currentCustomer.getId());
                session.setAttribute("userName", currentCustomer.getName());
                session.setAttribute("userIdentification", currentCustomer.getIdentification());
                response.sendRedirect(request.getContextPath() + "/main");
                return;

            }
        }
        RequestDispatcher view = request.getRequestDispatcher(access);
        view.forward(request, response);
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
