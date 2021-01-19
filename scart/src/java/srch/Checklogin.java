/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Checklogin", urlPatterns = {"/Checklogin"})
public class Checklogin extends HttpServlet {
    

   
    
    

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
        PrintWriter out = response.getWriter();
        
        HttpSession session=request.getSession(); 
        try 
        {
            MdHash md=new MdHash();
        
            String un=request.getParameter("username");
            String pw=md.mdHash(request.getParameter("password"));
        
            Statement st= DBconnection.getConnectiontoDB().createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM users WHERE username='"+un+"' AND password='"+pw+"'");
            
            if(rs.next())
            {
                session.setAttribute("user", un);
                if(rs.getInt("type")==1)
                {
                    session.setAttribute("admin", un); 
                    request.getRequestDispatcher("admin.jsp").forward(request, response);
                }
                else if(rs.getInt("type")==0)
                {    
                   request.getRequestDispatcher("index.jsp").forward(request, response);  
                }
            }
            else
            {
                request.setAttribute("msg", "Username or Password is incorrect");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
            }
            
        } 
        catch (NoSuchAlgorithmException | SQLException ex) 
        {
            Logger.getLogger(Checklogin.class.getName()).log(Level.SEVERE, null, ex);
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
