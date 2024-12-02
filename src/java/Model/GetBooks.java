/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;

/**
 *
 * @author junaid
 */
public class GetBooks implements Model{

    @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctx) {
        try{
            Dao md = Dao.getInstance();
            Statement st = md.getConnection();
            String query = "SELECT * FROM book_table ORDER BY subject;";
            ResultSet rs = md.getData(query, st);
            
            List<Books> bookList = new ArrayList<>();
            
            while (rs.next()) {
                
                int sem = rs.getInt(5);
                int year = rs.getInt(6);
                String name = rs.getString(2);
                String authName = rs.getString(3);
                String subject = rs.getString(4);
                String imgPath = rs.getString(7);

                // Assuming you have a Books class with getters and setters
                Books book = new Books();
                book.setSemester(sem);
                book.setYear(year);
                book.setName(name);
                book.setAuthName(authName);
                book.setSubject(subject);
                book.setImgPath(imgPath);

                bookList.add(book);
            }
            
            request.setAttribute("bookList", bookList);

            request.getRequestDispatcher("/userpage.jsp").forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}

