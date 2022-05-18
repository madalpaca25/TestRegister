package mysecondproject.example;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestRegister extends ActionSupport {
    
    private static final long serialVersionUID = 1L;
    
    private TestPerson personBean;
    private String error = "Random";


    public String execute() throws Exception {
        
        personBean = getPersonBean();
        saveToDB();
        return "Registered";
     
    }

    public boolean saveToDB() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        try {
            String URL = "jdbc:mysql://localhost:3306/mydb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "madmad123");

            if (connection != null) {
                
                statement = connection.createStatement();
                String sql = "INSERT INTO users(userName, passWord, firstName, lastName, accountType) VALUES('"+personBean.getUserName()+"', '"+personBean.getPassWord()+"','"+personBean.getFirstName()+"','"+personBean.getLastName()+"','"+personBean.getAccountType()+"')";
                statement.executeUpdate(sql);
                return true;
            } else {
                error = "DB connection failed";
                return false;
            }
         } catch (Exception e) {
             error = e.toString();
             return false;  
         } finally {
            if (statement != null) try { statement.close(); } catch (SQLException ignore) {}
            if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
         }
    }

    public String getError() {
        return error;
    }
    
    public TestPerson getPersonBean() {
        return personBean;
    }
    
    public void setPersonBean(TestPerson person) {
        this.personBean = person;
    } 

}