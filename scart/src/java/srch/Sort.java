/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Sort 
{
    private int size;
    private static ResultSet rs;
    private static String seSrch;
    private static String seSrt; 
    Statement st;
        
    public Sort() throws SQLException 
    {
        if("priceA".equals(seSrt))
        {
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones WHERE name "
                     + "LIKE '%"+seSrch+"%' OR brand LIKE '%"+seSrch+"%' OR price LIKE '%"+seSrch+"%'"
               + "ORDER BY price ASC";
            calsize(sqlq);
     
        }
        else if("priceD".equals(seSrt))
        {
            
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones WHERE name "
                     + "LIKE '%"+seSrch+"%' OR brand LIKE '%"+seSrch+"%' OR price LIKE '%"+seSrch+"%'"
               + "ORDER BY price DESC";
            calsize(sqlq);
            
        }  
        else if("nameA".equals(seSrt))
        {
            
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones WHERE name "
                     + "LIKE '%"+seSrch+"%' OR brand LIKE '%"+seSrch+"%' OR price LIKE '%"+seSrch+"%'"
               + "ORDER BY name ASC";
            calsize(sqlq);
            
        }  
        else if("nameD".equals(seSrt))
        {
            
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones WHERE name "
                     + "LIKE '%"+seSrch+"%' OR brand LIKE '%"+seSrch+"%' OR price LIKE '%"+seSrch+"%'"
               + "ORDER BY name DESC";
            calsize(sqlq);
            
        }  
        else if("rateA".equals(seSrt))
        {
            
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones "
               + "INNER JOIN rating "
               + "ON phones.id=rating.id "
               + "WHERE phones.name "
                     + "LIKE '%"+seSrch+"%' OR phones.brand LIKE '%"+seSrch+"%' OR phones.price LIKE '%"+seSrch+"%'" 
               + "ORDER BY rating.rating ASC";
       
            calsize(sqlq);
            
        }  
        else if("rateD".equals(seSrt))
        {
            
            st = DBconnection.getConnectiontoDB().createStatement();
            String sqlq="SELECT * FROM phones "
               + "INNER JOIN rating "
               + "ON phones.id=rating.id "
               + "WHERE phones.name "
                     + "LIKE '%"+seSrch+"%' OR phones.brand LIKE '%"+seSrch+"%' OR phones.price LIKE '%"+seSrch+"%'" 
               + "ORDER BY rating.rating DESC";
       
            calsize(sqlq);
        }  
    }
    
    public void calsize(String sqlq) throws SQLException
    {
            rs=st.executeQuery(sqlq);
            //get rs count
            rs.last();
            setSize(rs.getRow());
            rs.beforeFirst(); // ge rs to right potition  
           // seSrt=null;
        } 

    /**
     * @return the seSrch
     */
    public static String getSeSrch() {
        return seSrch;
    }

    /**
     * @param aSeSrch the seSrch to set
     */
    public static void setSeSrch(String aSeSrch) {
        seSrch = aSeSrch;
    }

    /**
     * @return the seSrt
     */
    public static String getSeSrt() {
        return seSrt;
    }

    /**
     * @param aSeSrt the seSrt to set
     */
    public static void setSeSrt(String aSeSrt) {
        seSrt = aSeSrt;
    }
      
       
    public int getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(int size) {
        this.size = size;
    }

    /**
     * @return the rs
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * @param rs the rs to set
     */
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }  
}
