import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class PostgreSQLJDBC {
    public static void main( String args[] ) {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager
                    .getConnection("jdbc:postgresql://localhost:5432/webapp",
                            "postgres", "postgres");
            c.setAutoCommit(false);
            System.out.println("Opened database successfully");

            stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "SELECT * FROM articles;" );
            while ( rs.next() ) {
                int id = rs.getInt("article_id");
                String  author = rs.getString("author");
                String  section = rs.getString("section");
                /*int age  = rs.getInt("age");
                String  address = rs.getString("address");
                float salary = rs.getFloat("salary");*/
                System.out.println( "Article ID = " + id );
                System.out.println( "Author = " + author );
                System.out.println( "Section = " + section );
                System.out.println();
            }
            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }
        System.out.println("Operation done successfully");
    }
}