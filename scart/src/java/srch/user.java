/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class user {

    private static ResultSet rs;

    public static ResultSet getRs() {
        return rs;
    }

    public static void setRs(ResultSet rs) {
        user.rs = rs;
    }

    public void uuser(String id) throws SQLException {
        
        
        
            Statement st= DBconnection.getConnectiontoDB().createStatement();
            
            rs= st.executeQuery("SELECT * FROM users WHERE username='"+id+"'");
            
            
           
        
    }
    
   
    
}
