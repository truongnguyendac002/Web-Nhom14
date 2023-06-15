/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import connection.DBcon;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.*;
import model.*;
import dao.*;

/**
 *
 * @author Asus
 */
@WebServlet(name="checkOutServlet", urlPatterns={"/check-out"})
public class checkOutServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet checkOutServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkOutServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()) {
            
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
            Date date = new Date();
            //lay thong tin tat ca sp trong gio
            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            User auth = (User) request.getSession().getAttribute("auth");
            
            if(cart_list != null && auth != null) {
                for(Cart c:cart_list) {
                    //cbi doi tuong order
                    Order order = new Order();
                    order.setId(c.getId());
                    order.setuid(auth.getId());
                    order.setQuantity(c.getQuantity());
                    order.setDate(formatter.format(date));
                    
                    //khoi tao dao
                    OrderDAO oDao = new OrderDAO(DBcon.getConnection());
                    
                    //goi insert method
                    boolean result = oDao.insertOrder(order);
                    if(!result) break;
                }
                cart_list.clear();
                response.sendRedirect("orders.jsp");
                
            } else {
                if(auth == null) response.sendRedirect("login.jsp");
                response.sendRedirect("cart.jsp");
            }
            
        } catch(Exception e) {
            e.printStackTrace();
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
