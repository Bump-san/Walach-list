package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
/**
 *
 * @author JE_SOO
 */
public class koneksi {
   Connection koneksi;
   public static Connection connect(){
//    try{
//        Class.forName ("com.mysql.jdbc.Driver");
//        System.out.println("berhasil konek");
//    } catch (ClassNotFoundException ex) {
//        System.out.println("gagal konek"+ex);
//    }
//    String url = "jdbc:mysql://localhost/wtl";
//    try{
//            koneksi = DriverManager.getConnection(url, "root","");
//            System.out.println("konek ke db");
//   } catch(SQLException ex) {
//       System.out.println("gagal konek db"+ex);
//   }
//    return koneksi;


try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/wtl","root","");
//            JOptionPane.showMessageDialog(null, "Connected to Database");
            return conn;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
   
   }
}





//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.Statement;
//import javax.swing.JOptionPane;
//public class koneksi {
//    Connection con;
//    Statement stm;
//    public void config(){
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con=DriverManager.getConnection("jdbc:mysql://localhost/wtl","root","");
//            stm=con.createStatement();
//        } catch (Exception e) {
//            JOptionPane.showMessageDialog(null, "Koneksi gagal"+e.getMessage());
//        }
//    }
//}
