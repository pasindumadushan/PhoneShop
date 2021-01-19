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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ChangePW", urlPatterns = {"/ChangePW"})
public class ChangePW extends HttpServlet {

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
            out.println("<title>Servlet ChangePW</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePW at " + request.getContextPath() + "</h1>");
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
     
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String sqlq;
        String upqu;
        int v=0;
       
        try
        {
        MdHash md=new MdHash();
        String opw=md.mdHash(request.getParameter("opw"));
        String npw=md.mdHash(request.getParameter("npw"));
        String cpw=md.mdHash(request.getParameter("cpw"));
        
        if(!(request.getParameter("opw")).isEmpty()&&!(request.getParameter("npw")).isEmpty() && !(request.getParameter("cpw")).isEmpty())
        {  
            try
            {
                Statement st= DBconnection.getConnectiontoDB().createStatement();
                ResultSet rs= st.executeQuery("SELECT password FROM users WHERE username='"+session.getAttribute("user")+"' AND password='"+opw+"'");
                if(rs.next())
                {
                    if(npw.equals(cpw))
                    {
                    upqu="UPDATE users SET password='"+npw+"' WHERE username='"+session.getAttribute("user")+"'";
                    v= st.executeUpdate(upqu);
                        if(v==1)
                        {
                            session.removeAttribute("user"); //destroy old session
                            request.setAttribute("msg", "Update Success");
                            request.getRequestDispatcher("login.jsp").forward(request, response);
			} 
                        else
                        {
                            request.setAttribute("msg", "Update unsuccess");
                            request.getRequestDispatcher("Updatepw.jsp").forward(request, response);
                        }
                    }
                    else 
                    {
                        request.setAttribute("msg", "Password doesn't match");
                        request.getRequestDispatcher("Updatepw.jsp").forward(request, response);
                    }
                    
                    
                }else
                {
                    request.setAttribute("msg", "Enter correct password");
                    request.getRequestDispatcher("Updatepw.jsp").forward(request, response);
                }
            
            
        }catch (SQLException ex) 
        {
            Logger.getLogger(ChangePW.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        }else
        {
            request.setAttribute("msg", "Password is empty");
            request.getRequestDispatcher("Updatepw.jsp").forward(request, response);
        }
        
        
        } catch (NoSuchAlgorithmException ex) 
        {
            Logger.getLogger(ChangePW.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

   
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
