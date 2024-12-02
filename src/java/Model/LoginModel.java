/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author junaid
 */
public class LoginModel implements Model {

    @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctx) {
        String enrollment = request.getParameter("enroll");
        String password = request.getParameter("pass");
        Dao md = Dao.getInstance();
        try{
            Statement st = md.getConnection();
            String quer = "SELECT password,status,role_id FROM login_table WHERE enrollment='" + enrollment + "'";
            ResultSet rs = md.getData(quer, st);
            
            if(!rs.next()){
                request.setAttribute("error","Invalid Credentials");
                request.getRequestDispatcher("/WEB-INF/View/Error.jsp").forward(request,response);
            }
            
            String getPassword = rs.getString("password");
            int getStatus = rs.getInt("status");
            int role_id = rs.getInt("role_id");

            if (!getPassword.equals(password)) {
                request.setAttribute("error","Password incorrect.");
                request.getRequestDispatcher("/WEB-INF/View/Error.jsp").forward(request,response);
            }
            else if(getStatus == 0) {
                request.setAttribute("error","Email has not been verified. Please verify.");
                request.getRequestDispatcher("/WEB-INF/View/Error.jsp").forward(request,response);
            }
            else{
                HttpSession session = request.getSession(true);
                session.setAttribute("enrollment",enrollment);
                if(role_id == 1){
                    GetBooks gt = new GetBooks();
                    gt.doBusiness(request, response, ctx);
                }
                else{
                    request.getRequestDispatcher("/WEB-INF/View/admin/adminpage.jsp").forward(request,response);
                }   
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
