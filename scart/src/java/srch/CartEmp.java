/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "CartEmp", urlPatterns = {"/CartEmp"})
public class CartEmp extends HttpServlet {

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
            out.println("<title>Servlet CartEmp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartEmp at " + request.getContextPath() + "</h1>");
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
    if(request.getParameter("EmptyCart")!=null)
    {
        HttpSession session=request.getSession();
        session.removeAttribute("name");
        session.removeAttribute("imagName");
        session.removeAttribute("price");
        session.removeAttribute("count");
            
        Crt crt=new Crt();
        crt.arrLCln();
        response.sendRedirect(request.getHeader("referer"));
            
    }
    else if(request.getParameter("rmv")!=null && request.getParameter("EmptyCart")==null)
    {
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
      
        Crt crt=new Crt();
        String[] name=crt.rem((String[]) session.getAttribute("name"), request.getParameter("name"));
        String[] price=crt.rem((String[]) session.getAttribute("price"), request.getParameter("price"));
        String[] imagName=crt.rem((String[]) session.getAttribute("name"), request.getParameter("name"));
            
        out.print(price[0]);
        out.print(price[1]);           
            
        session.setAttribute("price", price);
        session.setAttribute("name", name);
        session.setAttribute("imagName", imagName);
        
           
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
