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
public class RegistrationModel implements Model{

    @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctx) {
       Dao md = Dao.getInstance();
       try{
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String enrollment = request.getParameter("enrollment");
            String password = request.getParameter("password");
            String branch = request.getParameter("branch");
            String year = request.getParameter("year");
            String semester = request.getParameter("semester");
            
            System.out.println(name+" "+email+" "+enrollment+" "+password+" "+branch+" "+year+" "+semester);
            
            Statement st = md.getConnection();
            String getsno="SELECT MAX(sno) FROM user_table";
            ResultSet rs = md.getData(getsno,st);
            int sno=0;
            if(rs != null){
                rs.next();
                sno=rs.getInt(1);
            }
            System.out.println(sno);
            sno=sno+1;
            
            String logQuery = "INSERT INTO login_table (enrollment, password, status, role_id) VALUES ('"+ enrollment + "','"+ password + "', 0, 1)";
            md.insertData(logQuery,st);
            
            String regQuery = "INSERT INTO user_table (sno, user_name, branch, enrollment, email, semester, year) VALUES ('"+sno+"','"+ name + "','"+ branch + "','"+ enrollment + "','"+ email + "','"+ semester + "','"+ year + "')";
            md.insertData(regQuery,st);
            
            EmailSender ms = new EmailSender();
            ms.sendMail(email,enrollment);
            
            request.getRequestDispatcher("/WEB-INF/View/RegistrationSuccess.jsp").forward(request, response);
            
            md.closeConnection();

       }catch(Exception ex){
           ex.printStackTrace();
       }
    }
        
}
