/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

public class Hstr {
    
    
    private static ResultSet rs;
    private int size;
    Statement st;
   
    public void viewa(String un) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT checkout.id, checkout.pName, checkout.date, phones.price FROM checkout INNER JOIN phones ON checkout.pName=phones.name WHERE checkout.un='"+un+"'";
                     
        rs=st.executeQuery(sqlq);
        rs.last();
        size=rs.getRow();
        rs.beforeFirst(); // ge rs to right potition 
    }

    public static ResultSet getRs() 
    {
        return rs;
    }

    public static void setRs(ResultSet rs) 
    {
        Hstr.rs = rs;
    }

    public int getSize() 
    {
        return size;
    }

    public void setSize(int size) 
    {
        this.size = size;
    }
}
