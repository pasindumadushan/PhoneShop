<%@page import="srch.Adm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item Details</title>
    </head>
    <body>
        
        <%if(session.getAttribute("admin")==null){
            
         //request.getRequestDispatcher("access_denied.jsp").forward(request, response);
   
        }%>
        
        <%Adm a=new Adm(); %>
        
        <div style="position: relative;">  
            
            <center><table border='1' style="border-collapse: collapse;
                           font-family: verdana,helvetica,arial,sans-serif;"> <tr> 
                        
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">ID</td>
                        
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Phone Name</td>
                        
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Date and Time</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Username</td>
                    </tr>
                    <% for(int i=0;i<a.getSize()+1;i++ ){
                        if(i==4){%> 
                         <tr>
                <% }else{
                        while(a.getRs().next()){
                   %>
                    
                   <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("id") %></td>
                   
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("pName") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("date") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=a.getRs().getString("un") %></td>
                    
                                  
                    
                         </tr> 
     <%}}}%> 
                </table>
            </center>
        </div>
        
    </body>
</html>
