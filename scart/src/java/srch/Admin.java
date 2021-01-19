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


@WebServlet(name = "Admin", urlPatterns = {"/Admin"})
public class Admin extends HttpServlet {

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
            out.println("<title>Servlet Admin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Admin at " + request.getContextPath() + "</h1>");
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
        if(request.getParameter("action").equals("va"))
        {
            try 
            {
                Adm adm=new Adm();
                adm.viewAd(request.getParameter("action"));
                request.getRequestDispatcher("vadmin.jsp").forward(request, response);
            }catch (SQLException ex) 
            {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        }
        else if(request.getParameter("action").equals("vi"))
        {
            try 
            {
                Adm adm=new Adm();
                adm.viewIt(request.getParameter("action"));
                request.getRequestDispatcher("vitem.jsp").forward(request, response);
            } catch (SQLException ex) 
            {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }  
            
            
        }
        else if(request.getParameter("action").equals("vu"))
        {
            
           try 
            {
                Adm adm=new Adm();
                adm.viewUs(request.getParameter("action"));
                request.getRequestDispatcher("vuser.jsp").forward(request, response);
            } catch (SQLException ex) 
            {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }  
            
            
        }
        else if(request.getParameter("action").equals("vh"))
        {
            try 
            {
                Adm adm=new Adm();
                adm.viewhis(request.getParameter("action"));
                request.getRequestDispatcher("vhis.jsp").forward(request, response);
            } catch (SQLException ex)
            {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
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
        if(request.getParameter("dltusr")!=null)
    {
            
        try 
        {
            Adm adm=new Adm();
            int val=adm.deleteUs(request.getParameter("un"));
            String msg;
            PrintWriter out = response.getWriter();
           
            if(val==1)
            {
                request.setAttribute("dmsg", "Successfully deleted");
                request.getRequestDispatcher("duser.jsp").forward(request, response);
                  
            }
            else
            {
                 
                request.setAttribute("dmsg", "User doesn't exist");
                request.getRequestDispatcher("duser.jsp").forward(request, response);
            }
              
        } 
        catch (SQLException ex) 
        {
             Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }  
            
            
        } 
        else if(request.getParameter("dltadm")!=null)
        {
            PrintWriter out = response.getWriter();    
            out.print(request.getParameter("una"));
            try 
            {
                Adm adm=new Adm();   
                int val=adm.deleteAd(request.getParameter("una"));
                if(val==1)
                {
                    request.setAttribute("dmsga", "Successfully deleted");
                    request.getRequestDispatcher("dadmin.jsp").forward(request, response);
                  
                }
                else
                {
                    request.setAttribute("dmsga", "User doesn't exist");
                    request.getRequestDispatcher("dadmin.jsp").forward(request, response);
                
                }
              
            } 
            catch (SQLException ex) 
            {
             Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }  
                        
        }
        else if(request.getParameter("dltitm")!=null)
        {
            PrintWriter out = response.getWriter();    
            out.print(request.getParameter("id"));
            try 
            {
                Adm adm=new Adm();   
                int val=adm.deleteIt(request.getParameter("id"));
                if(val==1)
                {
                    request.setAttribute("dmsg", "Successfully deleted");
                    request.getRequestDispatcher("ditem.jsp").forward(request, response);
                  
                }
                else
                {
                    request.setAttribute("dmsg", "Item doesn't exist");
                    request.getRequestDispatcher("ditem.jsp").forward(request, response);
                }
              
            } 
            catch (SQLException ex) 
            {
             Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
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
