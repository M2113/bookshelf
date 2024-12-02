/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.*;
import jakarta.mail.*;
import jakarta.mail.internet.*;


/**
 *
 * @author junaid
 */
public class EmailSender {
    public void sendMail(String emailto, String enroll){
        String from = "donotreply.bookshelf0@gmail.com";
        final String username = "donotreply.bookshelf0";
        final String password = "cgxe lojt uhkd gxms";
        Properties props = new Properties();
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.ssl.trust","smtp.gmail.com");
        props.put("mail.smtp.starttls.enable","true");          // tls for encryption
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.port","587");                      // port no of email is 587
        Session session = Session.getInstance(props, new jakarta.mail.Authenticator(){
           protected PasswordAuthentication getPasswordAuthentication(){
               return new PasswordAuthentication(username, password);
           } 
        });
        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailto));
            msg.setSubject("Welcome to IU BookShelf");
            msg.setContent("Please verify by clicking here <a href='http://localhost:8080/BookShelf/fc?type=model&page=EmailVerification&enroll="+enroll+"'>Verify</a>","text/html");
            Transport.send(msg);
        } catch (MessagingException msge) {
            msge.printStackTrace();
        }
    }
}
