
package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class ConexionPostgreSQL {
  public Connection conexion;
  public Statement sentencia;
  public ResultSet resultado;
  
  
  public void ConectarBD() {
      try {
          final String Controlador = "org.postgresql.Driver";
          Class.forName(Controlador);
          final String url_bd = "jdbc:postgresql://localhost/db_libros2";
          conexion = DriverManager.getConnection(url_bd, "postgres", "admin");
          sentencia = conexion.createStatement();
          
      }catch (ClassNotFoundException | SQLException ex){
          JOptionPane.showMessageDialog(null, ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);

      }
}

public void DesconectarBD(){
    try {
        if (conexion !=null) {
            if (sentencia != null){
                sentencia.close();
            }
            conexion.close();
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
             System.exit(1);   
        }        
    }
    
    public Connection  getConnection(){
        return conexion;
        
    }

    public Connection conexion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    

}
