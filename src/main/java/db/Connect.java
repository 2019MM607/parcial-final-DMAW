
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connect {
    String user = "postgres";
    String password = "7FxT01F9XgZrtA5q3JMY";
   
    Connection conn = null;
    String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://containers-us-west-88.railway.app:6504/railway";
    
    /**
     *
     * @return
     * @throws SQLException
     */
    public Connection connect() throws SQLException{
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
            System.out.print("Se conectó exitosamente");
            
        } catch ( ClassNotFoundException ex) {
            System.out.print( "Error al conectarse a la bd: " + ex.toString());
        }
        return conn;
    }

}
