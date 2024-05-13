/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package rtb.jsp.crud.mnv.controller;

import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import rtb.jsp.crud.mnv.dao.CustomerDao;
import rtb.jsp.crud.mnv.dao.ShipmentsDao;
import rtb.jsp.crud.mnv.model.Customer;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import rtb.jsp.crud.mnv.constants.Routes;
import rtb.jsp.crud.mnv.model.Item;
import rtb.jsp.crud.mnv.services.CustomerService;
import rtb.jsp.crud.mnv.services.ItemService;
import rtb.jsp.crud.mnv.services.ReporteryService;
import rtb.jsp.crud.mnv.services.ShipmentService;

/**
 *
 * @author PC
 */
@WebServlet(name = "CustomerController", urlPatterns = {"/customer"})
public class CustomerController extends HttpServlet {

    ItemService itemService = new ItemService();
    CustomerService customerService = new CustomerService();
    ShipmentService shipmentService = new ShipmentService();
    ReporteryService reporteryService = new ReporteryService();

    String parameter_key = "action";

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
            out.println("<title>Servlet Controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
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

        if (current_location.equalsIgnoreCase("/customer") && current_action == null) {
            List<Customer> customerList = this.customerService.getAllCustomers();
            request.setAttribute("customer_list", customerList);
            access = Routes.CUSTOMER_LIST.getValue();
        }

        if (current_action != null) {
            
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("userId");
            List<Item> customerShipments = this.shipmentService.getCustomerShipments(userId);
            List<Item> itemSuggestions = this.itemService.getSuggestions();
            
            if (current_action.equalsIgnoreCase("customer.ship.list")) {
                request.setAttribute("item_suggestions", itemSuggestions);
                request.setAttribute("customer_shipments", customerShipments);
                access = Routes.CUSTOMER_SHIP_LIST.getValue();
            }

            if (current_action.equalsIgnoreCase("generate-report")) {
                String userName = (String) session.getAttribute("userName");
                String identification = (String) session.getAttribute("userIdentification");
                String reportPath = this.reporteryService.generateSingleUserReport(userId, userName, identification);
                session.setAttribute("current-user-report", reportPath);
                request.setAttribute("item_suggestions", itemSuggestions);
                request.setAttribute("customer_shipments", customerShipments);
                access = Routes.CUSTOMER_SHIP_LIST.getValue();
            }

            if (current_action.equalsIgnoreCase("generate-users-report")) {
                String reportPath = this.reporteryService.generateAllUsersReport();
                session.setAttribute("current-user-report", reportPath);
                request.setAttribute("item_suggestions", itemSuggestions);
                request.setAttribute("customer_shipments", customerShipments);
                access = Routes.CUSTOMER_SHIP_LIST.getValue();
            }
        }
        System.out.println(current_action);
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
