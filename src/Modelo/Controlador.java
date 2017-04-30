/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author User
 */
public class Controlador {
    
   
    
    
    public boolean EnviarCorreo(Correo cor){
    
        try {
          
            Properties p = new Properties();
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.setProperty("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.ssl.trust","*");
            p.setProperty("mail.smtp.port", "587");
            p.setProperty("mail.smtp.user", cor.getCorreo());
            p.setProperty("mail.smtp.auth", "true");
            
            Session s =  Session.getDefaultInstance(p, null);
            BodyPart texto = new MimeBodyPart();
            texto.setText(cor.getMensaje());
            
            MimeMultipart m = new MimeMultipart();
            m.addBodyPart(texto);
            
            MimeMessage mensaje = new MimeMessage(s);
            mensaje.setFrom(new InternetAddress(cor.getCorreo()));
            mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(cor.getDestino()));
            mensaje.setSubject(cor.getAsunto());
            mensaje.setContent(m);
            
            Transport t = s.getTransport("smtp");
            t.connect(cor.getCorreo(),cor.getContraseña());
            t.sendMessage(mensaje, mensaje.getAllRecipients());
            t.close();
            
            return true;
            
        } catch (Exception e) {
            System.out.println(e);
            
            return false;
        }
    
    
      
    }
    
    
    
    
}
