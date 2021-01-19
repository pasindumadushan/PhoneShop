<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>phone Form</title>
  <link rel="stylesheet" href="css/register/style.css">
  
  
</head>

<body>
    <%if(session.getAttribute("admin")==null){
            
        // request.getRequestDispatcher("access_denied.jsp").forward(request, response);
   
        }%>
  <div class="container">
    <section class="register">
        <% if(request.getAttribute("msgs")!=null){
   out.print(request.getAttribute("msgs")) ; }%>  
    
 <h1>Add a Admin </h1>
      

      <br>
      <form method="post" action="additm">
      <div>
      <h3> Admin Details</h3>
      
      <input type="text" name="un" value="" placeholder="user name">
      <input type="text" name="pw" value="" placeholder="password">
      
      
      </div>
   
       
       <input type="submit" name="add"  value="ADD">
      </form>
    </section>
  </div>

</body>
</html>