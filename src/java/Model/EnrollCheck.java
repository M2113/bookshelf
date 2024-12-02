/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author junaid
 */
public class EnrollCheck implements Model{

    @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctx) {
        int enroll = Integer.parseInt(request.getParameter("enroll"));
        System.out.println(enroll);
        String password = request.getParameter("password");
        System.out.println(password);
        Dao md = Dao.getInstance();
        String getEnroll = "SELECT * FROM login_table WHERE enrollment='"+enroll+"'";
        Statement st = md.getConnection();
        ResultSet rs = md.getData(getEnroll, st);
        try {
            if(!rs.next()){
                response.getWriter().write("Enrollment doesn't exists");}
//            }else{
//                String getPassword = rs.getString("password");
//                if(!password.equals(getPassword)){
//                    response.getWriter().write("Wrong password");
//                }
//            }
        }catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
