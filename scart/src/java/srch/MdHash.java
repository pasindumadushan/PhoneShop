/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srch;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Encoder;


public class MdHash 
{

    public String mdHash(String hsh) throws NoSuchAlgorithmException 
    {
        
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(hsh.getBytes());

        BASE64Encoder base64Encoder = new BASE64Encoder();
        return base64Encoder.encode(md.digest());
        
    }
    
    
    
}
