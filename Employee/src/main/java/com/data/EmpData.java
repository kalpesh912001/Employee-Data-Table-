package com.data;

import com.model.Employee;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmpData {

    public String jdbcURL = "jdbc:mysql://localhost:3306/empData?userSSL=false";
    public String jdbcUsername = "root";
    private String jdbcPass = "bootstrap@123";

    public static final String insert_user = "insert into emp user values" + "(?,?,?,?,?);";
    public static final String display_all_emp = "select * from users;";

    public EmpData() {

    }

    Connection c = null;
    PreparedStatement s = null;

    public Connection Conn() {
        try {
            c = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPass);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return c;
    }

    //insert employee
    public void insertUser(Employee emp) {
        try ( Connection c = Conn();  PreparedStatement pstm = c.prepareStatement(insert_user)) {
            pstm.setString(1, emp.getId());
            pstm.setString(2, emp.getName());
            pstm.setString(3, emp.getDob());
            pstm.setString(4, emp.getExp());
            pstm.setString(5, emp.getDesignation());
            pstm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //display all employees
    public List<Employee> displayAllEmp() {

        List<Employee> empList = new ArrayList<>();
        try ( Connection c = Conn();  PreparedStatement pstm = c.prepareStatement(display_all_emp);) {
            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String dob = rs.getString("dob");
                String exp = rs.getString("experience");
                String designation = rs.getString("designation");
                empList.add(new Employee(id, name, dob, exp, designation));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return empList;
    }

}
