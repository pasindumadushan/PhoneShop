/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;


public class Srch {
        private static String sString,phn;
        private int size,id;
        private static ResultSet rs,rs2;

 
Statement st;
    public Srch() throws SQLException 
    {
       
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq="SELECT * FROM phones WHERE name "
                     + "LIKE '%"+sString+"%' OR brand LIKE '%"+sString+"%' OR price LIKE '%"+sString+"%'";
        rs=st.executeQuery(sqlq);
        //get rs count
        rs.last();
        setSize(rs.getRow());
        rs.beforeFirst(); // ge rs to right potition
      
    }
    
    public Srch(int id) throws SQLException 
    {
        st = DBconnection.getConnectiontoDB().createStatement();
        
        ResultSet rs;
        String sqlq5="SELECT * FROM rating WHERE id='"+id+"'"; 
        rs=st.executeQuery(sqlq5);
        if(rs.next())
        {
        setCr(rs.getFloat("rating"));
        }
    }
    
    
    public ResultSet phone() throws SQLException
    {
        
        st = DBconnection.getConnectiontoDB().createStatement();
        String sqlq2="SELECT *\n" +
                    "FROM phones INNER JOIN data\n" +
                    "ON phones.id=data.id\n" +
                    "where phones.name='"+phn+"'";
        rs2=st.executeQuery(sqlq2);
 
     return rs2;        
    }

    public void rating(int pId, int point ) throws SQLException{
    ResultSet rs3;   
      
    id=pId;  
    st = DBconnection.getConnectiontoDB().createStatement();  
        
    String sqlq3="SELECT * from rating WHERE id='"+id+"'";
    rs3=st.executeQuery(sqlq3);
    int newCount=0;
    
    int newPoints=0;
    double newRating=0;
    while(rs3.next())
    { 
        newCount=rs3.getInt("count")+1;
        newPoints=rs3.getInt("points")+point;
    }
       
    double newRat = (double)newPoints/(double)newCount;
    
        // round 2 decimal
        DecimalFormat df = new DecimalFormat("###.##");
        newRating=Double.valueOf(df.format(newRat));
        updateRating(newCount,newPoints,id,newRating);
        
    }
     
     public void updateRating(int newCount, int point, int id, double newRating) throws SQLException
     {
         
        String sqlq4="UPDATE rating SET count='"+newCount+"', points='"+point+"',"
                 + "rating='"+newRating+"' WHERE id='"+id+"'";
        st.executeUpdate(sqlq4);
         
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
        private float cr;
       
    private static String seSrch;
            private static String seSrt;    

    /**
     * @return the phn
     */
    public static String getPhn() {
        return phn;
    }

    /**
     * @param aPhn the phn to set
     */
    public static void setPhn(String aPhn) {
        phn = aPhn;
    }
    
    /**
     * @return the sString
     */
    public String getsString() {
        return sString;
    }

    /**
     * @param sString the sString to set
     */
    public void setsString(String sString) {
        this.sString = sString;
    }

    /**
     * @return the size
     */
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

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

  

    /**
     * @return the cr
     */
    public float getCr() {
        return cr;
    }

    /**
     * @param cr the cr to set
     */
    public void setCr(float cr) {
        this.cr = cr;
    }
    /**
     * @return the cr
     */  
    
}
