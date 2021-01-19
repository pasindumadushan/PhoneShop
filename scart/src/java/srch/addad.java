/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;


@WebServlet(name = "additm", urlPatterns = {"/additm"})
public class addad extends HttpServlet {

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
            out.println("<title>Servlet additm</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet additm at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException 
    {
        
        HttpSession session=request.getSession(); 
        PrintWriter out = response.getWriter();
        Result rs;
       
        String un=request.getParameter("un");
        String pw=request.getParameter("pw");
            
            
        try 
        {
            Statement st= DBconnection.getConnectiontoDB().createStatement();
        
            MdHash md=new MdHash();
            String sql="Insert into admin(un,pw)values('"+un+"','"+md.mdHash(pw)+"')";
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                request.setAttribute("msga", "<script>alert('Added');</script>");
                request.getRequestDispatcher("addad.jsp").forward(request, response);
            
            }else
            {
                request.setAttribute("msga", "<script>alert('Failed');</script>");
                request.getRequestDispatcher("addad.jsp").forward(request, response);
            }
            
        }catch(SQLException | ServletException | IOException e)
        {
                
        }
        catch (NoSuchAlgorithmException ex) 
        {
            Logger.getLogger(addad.class.getName()).log(Level.SEVERE, null, ex);
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
