/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.*;
import java.io.PrintWriter;
import java.sql.*;
/**
 *
 * @author junaid
 */
public class EmailVerification implements Model{
     @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctxt) {
        String enrollment = request.getParameter("enroll");
        
        String query = "UPDATE login_table SET status = 1 WHERE(enrollment = '"+enrollment+"')";
        
        Dao md = Dao.getInstance();
        
        try (PrintWriter out = response.getWriter()) {
            Statement st = md.getConnection();
            md.insertData(query, st);
            out.println("Verification Complete");
            out.println("Go to <a href='http://localhost:8080/BookShelf/index.html'>Home</a>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
