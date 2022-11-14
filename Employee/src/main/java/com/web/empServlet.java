package com.web;
import com.data.EmpData;
import com.model.Employee;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.io.IOException;
import java.sql.SQLException;

public class empServlet extends HttpServlet {

    public EmpData empData;

    public void Init() {
        empData = new EmpData();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        try {

            if (action == "insert") {
                insertUser(request, response);

            } else if (action == "list") {
                listAllEmp(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String exp = request.getParameter("experience");
        String designation = request.getParameter("designation");
        Employee newEmp = new Employee(id, name, dob, exp, designation);
        empData.insertUser(newEmp);
        response.sendRedirect("list");
    }

    public void listAllEmp(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Employee> listEmp = empData.displayAllEmp();
        request.setAttribute("listEmp", listEmp);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);

    }
}
