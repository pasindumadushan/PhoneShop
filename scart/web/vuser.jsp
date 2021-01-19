<%@page import="srch.Adm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
    </head>
    <body>
        
        <%if(session.getAttribute("admin")==null){
            
        // request.getRequestDispatcher("access_denied.jsp").forward(request, response);
   
        }%>
        
        <%Adm a=new Adm(); %>
        
        <div style="position: relative;">  
            
            <center><table border='1' style="border-collapse: collapse;
                           font-family: verdana,helvetica,arial,sans-serif;"> <tr> 
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">ID</td>
                        <td align="left"  height="24px" style="border: 1px solid #98bf21;">Username</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">First Name</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Middle Name</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Last Name</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Email</td>
                        <td align="left"  height="24px" style="border: 1px solid #98bf21;">Mobile</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Land</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Address</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Country</td>
                    </tr>
                    <% for(int i=0;i<a.getSize()+1;i++ ){
                        if(i==10){%> 
                         <tr>
                <% }else{
                        while(a.getRs().next()){
                   %>
                    
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("id") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("username") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("fN") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("mN") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("lN") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("email") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("mNo") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("lNo") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("addr") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("country") %></td>
                    
                                  
                    
                         </tr> 
     <%}}}%> 
                </table>
            </center>
        </div>
        
    </body>
</html>
