
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Connect {
    //Conexion a BD
    public Connection getConnection() throws ClassNotFoundException, SQLException{
       Connection connection;
       Class.forName("org.postgresql.Driver");
       connection=DriverManager.getConnection("jdbc:postgresql://containers-us-west-88.railway.app:6504/railway", "postgres", "7FxT01F9XgZrtA5q3JMY");
       return connection;
    }
    
    public boolean checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
        String response = "";
        boolean check = false;
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT correo FROM usuario WHERE correo = '"+email+"' AND contraseña = '"+password+"' ");
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            response += rs.getString("correo");
            if(response.isEmpty()){
                check = false;
            } else check = true;
        }
        return check;
    }
    
    public String getRol(String email) throws ClassNotFoundException, SQLException {
        String response = "";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT rol FROM usuario WHERE correo = '"+email+"'");
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
            response += rs.getString("rol");
        }
        return response;
    }
    public String getAuto(String id) throws ClassNotFoundException, SQLException {
        String response = "";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT marca FROM auto WHERE id_auto = '"+id+"'");
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
            response += rs.getString("marca");
        }
        return response;

    }
    public String getAlquiler() throws ClassNotFoundException, SQLException {
        String response = "";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT inicio, fin, id_auto FROM alquiler");
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
            response+="<tr><td class='px-3 py-2 border-b border-gray-300 shadow-md text-center'><input type=checkbox name='eliminar' value='"+rs.getString("id_alquiler")+"' title='"+rs.getString("id_alquiler")+"'></td>";
            response+="<td class='px-3 py-2 border-b border-gray-300 shadow-md text-center'>"+rs.getString("inicio")+"</td>";
            response+="<td class='px-3 py-2 border-b border-gray-300 shadow-md text-center'>"+rs.getString("fin")+"</td>";
            response+=getAuto(rs.getString("id_auto"));
        }
        return response;
    }
    

}
