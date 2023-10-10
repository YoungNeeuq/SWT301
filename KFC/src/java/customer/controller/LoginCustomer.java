/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package customer.controller;

import dal.AdminDAO;
import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Admin;
import model.Customer;

/**
 *
 * @author Asus
 */
public class LoginCustomer extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginCustomer</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginCustomer at " + request.getContextPath() + "</h1>");
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
        response.sendRedirect("login.jsp");
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
        try {

            String userInput = request.getParameter("username");
            String passInput = request.getParameter("password");
            CustomerDAO customerDAO = new CustomerDAO();
            AdminDAO adminDAO = new AdminDAO();
            Admin admin = adminDAO.getAdmin(userInput, passInput);
            Base64.Encoder encoder = Base64.getEncoder();
            String encodePass = encoder.encodeToString(passInput.getBytes());
            Customer customer = customerDAO.getCustomer(userInput, encodePass);

            if (customer != null) {
                // neu la customer thi chuyen toi trang hone.jsp
                int customerId;
                customerId = customer.getCustomer_id();
                HttpSession session = request.getSession();
                Customer c = customerDAO.getCustomer(userInput, passInput);
                session.setAttribute("account", c);
                session.setAttribute("customer_id", customerId);
               request.getRequestDispatcher("viewProduct.jsp").forward(request, response);
            } else if (admin != null) {

                response.sendRedirect("ListProductServlet");
            } else {
                request.setAttribute("tbsubmit", "Tài khoản hoặc mật khẩu không đúng");
                // return back login.jsp using Servlet (method GET)
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception ex) {
            response.sendRedirect("error.jsp");
            Logger.getLogger(LoginCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
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
