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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

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
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
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
        
        
        
            PrintWriter out = response.getWriter();
            String un=request.getParameter("username");
            String pw=request.getParameter("password");
            String cpw=request.getParameter("confirm");
            String fN=request.getParameter("fN");
            String mN=request.getParameter("mN");
            String lN=request.getParameter("lN");
            String email=request.getParameter("email");
            String mNo=request.getParameter("mNo");
            String lNo=request.getParameter("lNo");
            String addr=request.getParameter("addr");
            String country=request.getParameter("country");
            
            if(!"agree".equals(request.getParameter("remember_me")))
            {
               request.setAttribute("msg", "Please agree to the user agreement");//not agree error
               request.getRequestDispatcher("register.jsp").forward(request, response);
               out.print("if");
            }else if("agree".equals(request.getParameter("remember_me")))
            {
               if(fN.isEmpty()||lN.isEmpty()||un.isEmpty()||pw.isEmpty()||cpw.isEmpty()||email.isEmpty()||mNo.isEmpty()||addr.isEmpty()){
                //req empty
                request.setAttribute("msg", "Required field cannot be blank.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }else
            {
                 //email
                boolean chkem = true;
                try 
                {
                    InternetAddress emailAddr = new InternetAddress(email);
                    emailAddr.validate();
                } catch (AddressException ex) 
                {
                    chkem = false;
                } 
                if(!pw.equals(cpw))
                {
                 //passwords
                    request.setAttribute("msg", "Passwords does not match.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);   
                } 
                else if(!chkem)
                {
                    request.setAttribute("msg", "Email is not valid.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);    
                    
                }else if(mNo.length()!=10)
                {
                    request.setAttribute("msg", "Phone number is invalid.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
            
                
                }else
                {
                   try 
                   {
                        Statement st= DBconnection.getConnectiontoDB().createStatement();
                        ResultSet rs= st.executeQuery("SELECT * FROM users WHERE username='"+un+"'");
       
                        if(rs.next())
                        {
                           request.setAttribute("msg", "Username already exists");
                           request.getRequestDispatcher("register.jsp").forward(request, response);   
                        }else
                        {
                            MdHash md=new MdHash();
                    
                            String sql_1="Insert into users(username, password, fN, mN, lN, email, mNo, lNo, addr, country)values('"+un+"','"+md.mdHash(pw)+"','"+fN+"','"+mN+"','"+lN+"','"+email+"','"+mNo+"','"+lNo+"','"+addr+"','"+country+"')";
                            if(st.executeUpdate(sql_1)>0)
                            {
                                request.setAttribute("msg", "You are successfully registered. Please log in.");
                                request.getRequestDispatcher("login.jsp").forward(request, response);
                            }else
                            {
                                request.setAttribute("msg", "Regisrtation failed.");
                                request.getRequestDispatcher("register.jsp").forward(request, response); 
                            }
                            //out.println("ththdss"+st.executeUpdate(sql_1));
                        }
                    } catch (SQLException ex) 
                    {
                        Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
                    }         
                    catch (NoSuchAlgorithmException ex) 
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
