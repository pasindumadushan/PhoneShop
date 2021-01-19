/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Search", urlPatterns = {"/Search"})
public class Search extends HttpServlet {

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
            out.println("<title>Servlet Search</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Search at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(); 
        if(request.getParameter("q") != null)
        {
            String sString=request.getParameter("q");
            session.setAttribute("searchString", sString);   
            if(sString.isEmpty())
            {
                session.removeAttribute("searchString");
                request.getRequestDispatcher("search.jsp").forward(request, response);
            }
            else
            {
                try 
                {
                    Srch sr=new Srch();
                    sr.setsString(sString);
                    request.setAttribute("sString", sString);
                    request.getRequestDispatcher("search.jsp").forward(request, response);  
                }
                catch (SQLException ex)
                {
                    Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
                }
        
             }
        } 
        else if(request.getParameter("phone") != null)
        {
            String phn= request.getParameter("phone");    
            if(phn.isEmpty())
            {
                out.print("empty search");
            }
            else
            {
                try 
                {
                    Srch sr=new Srch();
                    sr.setPhn(phn);
                    request.getRequestDispatcher("details.jsp").forward(request, response);
                    sr.setSeSrt(null);
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
        }
        else if(request.getParameter("sort")!=null)
        {
            try 
            {
                Sort sr=new Sort();
                String sort= request.getParameter("sort");
                sr.setSeSrt(sort);
                request.setAttribute("sort", sort);
                sr.setSeSrch((String) session.getAttribute("searchString"));
                request.getRequestDispatcher("sort.jsp").forward(request, response);
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
        PrintWriter out = response.getWriter();
        
        String rt=request.getParameter("rate");
        String Id=request.getParameter("pId");
        int pId=Integer.parseInt(Id);
        
       if( rt!= null && Id!= null )
       {
            int point=Integer.parseInt(rt);
            try 
            {
                Srch sr=new Srch();  
                sr.rating(pId, point);
                response.sendRedirect(request.getHeader("referer"));// get url referer and redirect
            }
            catch (SQLException ex)
            {
                Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
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
