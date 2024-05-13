/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package rtb.jsp.crud.mnv.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import rtb.jsp.crud.mnv.constants.Routes;
import rtb.jsp.crud.mnv.model.Item;
import rtb.jsp.crud.mnv.services.ItemService;
import rtb.jsp.crud.mnv.services.ShipmentService;

/**
 *
 * @author PC
 */
@WebServlet(name = "Shipment", urlPatterns = {"/shipment"})
public class ShipmentController extends HttpServlet {

    String parameter_key = "action";
    ItemService itemService = new ItemService();
    ShipmentService shipmentService = new ShipmentService();

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
            out.println("<title>Servlet Shipment</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Shipment at " + request.getContextPath() + "</h1>");
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

        System.out.println(current_action);

        if (current_action.equalsIgnoreCase("shipment.ship")) {

            int id = Integer.parseInt(request.getParameter("id"));
            Item currenItem = this.itemService.getItem(id);

            List<Item> itemSuggestions = this.itemService.getSuggestions();
            request.setAttribute("item_suggestions", itemSuggestions);
            request.setAttribute("current_item", currenItem);
            access = Routes.SHIPMENTS.getValue();
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

        if (current_action.equalsIgnoreCase("ship.item")) {
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("userId");
            int itemId = Integer.parseInt(request.getParameter("itemId"));
            int amount = Integer.parseInt((String) request.getParameter("amount"));

            System.out.println("user id --->" + userId);
            System.out.println("item id  --->" + itemId);
            System.out.println("amount  --->" + amount);

            this.shipmentService.buyItem(userId, itemId, amount);

            request.setAttribute("item_shipment", String.valueOf(itemId));
            List<Item> itemList = this.itemService.getAllItems();
            request.setAttribute("item_list", itemList);
            access = Routes.HOME.getValue();
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
