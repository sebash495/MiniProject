
package libros;

import vista.add;
import vista.home;
import vista.motordb;


public class Libros {
    
    public static home motor = new home();
    public static add motor2 = new add();
    
    public static void main(String[] args) {
        motordb M = new motordb();
        M.setVisible(true);

    }
    
}
