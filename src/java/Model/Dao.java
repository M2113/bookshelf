/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.*;
/**
 *
 * @author junaid
 */
public class Dao {
    
    Connection con=null;
    
    public Statement getConnection(){
        
        Statement st = null;
 
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bookshelf?useSSL=false&allowPublicKeyRetrieval=true";
            String un="junaidali";
            String pass="Rockstar@23";
            con=DriverManager.getConnection(url,un,pass);
            st=con.createStatement();    
        }
        catch(Exception sqle){
                sqle.printStackTrace();
        }
        return st;
    }
    
    public void closeConnection(){
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    private Dao(){}
    private static Dao md = null;
    
    public static Dao getInstance(){
        if(md == null)
            md = new Dao();
        return md;
    }
    
    public void insertData(String query, Statement st){
        try {
            st.execute(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public ResultSet getData(String query, Statement st){
        ResultSet rs = null;
        try {
            rs = st.executeQuery(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
}
