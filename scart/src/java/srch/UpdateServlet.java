/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {

    public int s;
    
    
    /**
     * 
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
            out.println("<title>Servlet UpdateServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateServlet at " + request.getContextPath() + "</h1>");
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
        
        
        
            HttpSession session=request.getSession(); 
            String sqlq;
            updatemsg u = new updatemsg();
            PrintWriter out = response.getWriter();
            String fN=request.getParameter("fN");
            String mN=request.getParameter("mN");
            String lN=request.getParameter("lN");
            String email=request.getParameter("email");
            String mNo=request.getParameter("mNo");
            String lNo=request.getParameter("lNo");
            String addr=request.getParameter("addr");
            String country=request.getParameter("country");
            
            
        
             
            if(session.getAttribute("user")!=null)
            {
                if(fN.isEmpty()||lN.isEmpty()||email.isEmpty()||mNo.isEmpty()||addr.isEmpty()){
                //req empty
                 request.setAttribute("msg", "Required field cannot be blank.");
                //request.getRequestDispatcher("pro.jsp").forward(request, response);
                response.sendRedirect(request.getHeader("referer"));
                }
                else
                {
                    //email
                    boolean chkem = true;
                    try 
                    {
                       InternetAddress emailAddr = new InternetAddress(email);
                       emailAddr.validate();
                    } 
                    catch (AddressException ex) 
                    {
                     chkem = false;
                    } 
                    if(!chkem)
                    {
                        request.setAttribute("msg", "Email is not valid.");
                        //request.getRequestDispatcher("pro.jsp").forward(request, response);    
                        response.sendRedirect(request.getHeader("referer"));
                    
                    }else if(mNo.length()!=10)
                    {
                        request.setAttribute("msg", "Phone number is invalid.");
                        //request.getRequestDispatcher("pro.jsp").forward(request, response);
                        response.sendRedirect(request.getHeader("referer"));
                    }else
                    {
                        try 
                        {
                            Statement st= DBconnection.getConnectiontoDB().createStatement();
                            sqlq="UPDATE users SET lN='"+lN+"', fN='"+fN+"', mNo='"+mNo+"', addr='"+addr+"',email='"+email+"', mN='"+mN+"', lNo='"+lNo+"', country='"+country+"' WHERE username='"+session.getAttribute("user")+"'";
                            st.executeUpdate(sqlq);
                            if(st.executeUpdate(sqlq)>0)
                            {
                                request.setAttribute("msg", "Updated");
                                response.sendRedirect(request.getHeader("referer"));
                            }else
                            {
                                request.setAttribute("msg", "Update failed.");
                                response.sendRedirect(request.getHeader("referer"));
                            }
    
                        } catch (SQLException ex) 
                        {
                            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
                        }   
                    
                    }               
                }           
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
