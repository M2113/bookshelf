/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.*;
/**
 *
 * @author junaid
 */
public class GetSemester implements Model {

    @Override
    public void doBusiness(HttpServletRequest request, HttpServletResponse response, ServletContext ctx) {
        int year = Integer.parseInt(request.getParameter("year"));
        int sem1 = (2 * year) - 1;
        int sem2 = sem1 + 1;
        
        JSONObject obj = new JSONObject();
        JSONArray list = new JSONArray();
        
        JSONObject sem1Obj = new JSONObject();
        sem1Obj.put(sem1, sem1);
        list.add(sem1Obj);
        
        JSONObject sem2Obj = new JSONObject();
        sem2Obj.put(sem2, sem2);
        list.add(sem2Obj);
        
        obj.put("sem", list);
        String str = obj.toJSONString();
        
        request.setAttribute("semester",str);
        
        try {
            response.getWriter().write(str);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
}
