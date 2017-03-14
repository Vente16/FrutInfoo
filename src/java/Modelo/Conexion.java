/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author User
 */
public class Conexion {
    
    private Connection Conexion; 
   private String BD = "login";
   private String User = "root";
   private String pass = "";
   private String url = "jdbc:mysql://localhost:3306/"+BD;

    public Connection getConexion() {
        return Conexion;
    }

    public void setConexion(Connection Conexion) {
        this.Conexion = Conexion;
    }

    public String getBD() {
        return BD;
    }

    public void setBD(String BD) {
        this.BD = BD;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

   
    
   public Connection Conectar(){
   
       try {
           Class.forName("com.mysql.jdbc.Driver");
           Conexion =  (Connection) DriverManager.getConnection(url, User, pass);
           
       } catch (Exception e) {
           System.out.println("No se pudo conectar" + e);
       } 

       return Conexion;
         
   }  
    

   
   
   
   
   
}
