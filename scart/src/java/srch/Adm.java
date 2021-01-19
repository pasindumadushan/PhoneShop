/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Adm {
    
   
   private static ResultSet rs;
   private int size;
   Statement st,st2;
   int val;
    
    
    public void viewAd(String va) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT * FROM admin";
        rs=st.executeQuery(sqlq);
        rs.last();
        size=rs.getRow();
        rs.beforeFirst(); // ge rs to right potition 
    }
    
    public void viewIt(String vi) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT * FROM phones";
        rs=st.executeQuery(sqlq);
        rs.last();
        size=rs.getRow();
        rs.beforeFirst(); // ge rs to right potition 
    }
    public void viewUs(String vu) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT * FROM users";
        rs=st.executeQuery(sqlq);
        rs.last();
        size=rs.getRow();
        rs.beforeFirst(); // ge rs to right potition 
    }
    public int deleteUs(String un) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="Delete FROM users WHERE username='"+un+"'";
        val=st.executeUpdate(sqlq);
        return val;
    }
    public int deleteAd(String una) throws SQLException
    {
        st2 = DBconnection.getConnectiontoDB().createStatement();
        String sqlq2="Delete FROM admin WHERE un='"+una+"'";
        int va=st2.executeUpdate(sqlq2);
        System.out.println(va);
        return va;
       
    }
    public int deleteIt(String id) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="Delete FROM phones WHERE id='"+id+"'";
        val=st.executeUpdate(sqlq);
        return val;
    }
    public void viewhis(String vh) throws SQLException
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT * FROM checkout";
        rs=st.executeQuery(sqlq);
        rs.last();
        size=rs.getRow();
        rs.beforeFirst();
    }
    

    /**
     * @return the rs
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * @return the size
     */
    public int getSize() {
        return size;
    }
    
}
