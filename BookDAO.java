/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import pojo.book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author sneha
 */
public class BookDAO {
    public Connection con = null;
    public Statement stmt = null;
    public ResultSet rs=null;
    public PreparedStatement pStmt=null;
    
    public static BookDAO instance=null;
    
    public static synchronized BookDAO getInstance()
    {
        if (instance == null)
            instance = new BookDAO();
        return instance;
    }
    
    public BookDAO() {           
        try{            
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/","tomcat", "tomcat");
            System.out.println("Connection Object--------->"+con);
            stmt=con.createStatement();
        }
        catch(Exception e){            
            e.printStackTrace();            
        }
    }
    
    public ArrayList executeLogin(String username, String pwd){
        ArrayList userDetails = new ArrayList();
        try{
            System.out.println("SEARCH: "+username+pwd);  
            rs= stmt.executeQuery("SELECT * FROM UserData WHERE user_name = '"+username+"' AND user_password ='"+pwd+"'");
            if(!rs.next()){               
                //user not found
            }
            else{
                userDetails.add(rs.getString(2));
                userDetails.add(rs.getString(3));
            }                      
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return userDetails;
    }
    
}
