/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;


public class Crt
{
    
    static ArrayList price = new ArrayList();
    static ArrayList imagName = new ArrayList();
    static ArrayList name = new ArrayList();
    private int prc;
    
   

   
           
    
    public void arrLCln()
    { 
        price.clear();
        name.clear();
        imagName.clear();     
    }
    
            
   
        
    Statement st;
 
    public void crt(String id) throws SQLException 
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        
        ResultSet rs;
        String sqlq5="SELECT * FROM phones WHERE id='"+id+"'"; 
        rs=st.executeQuery(sqlq5);
        if(rs.next())
        {
            name.add(rs.getString("name"));
            price.add(rs.getString("price"));
            imagName.add(rs.getString("imagName"));       
        }     
   
    
    }
    public String [] rem(String [] ar,String re)
    {
        int nL=ar.length-1;
        String [] nAr = new String[ar.length];
        String [] nnAr=new String[nL];
        for(int i=0;i<ar.length;i++)
        {
            if(ar[i].equals(re))
            {
                ar[i]=null;
            }
        }

        for(int i=0;i<nL;i++)
        {
          if(ar[i]!=null)
          {       
            nnAr[i]=nAr[i]; 
          }
        }
        return nnAr;
    }

    /**
     * @return the prc
     */
    public int getPrc() 
    {
        return prc;
    }

    /**
     * @param prc the prc to set
     */
    public void setPrc(int prc)
    {
        this.prc = prc;
    }
   

    /**
     * @return the price
     */
   
}