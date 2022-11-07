
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
}
