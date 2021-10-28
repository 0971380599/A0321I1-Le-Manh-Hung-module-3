package controller;

import bean.Employee;
import service.EmployeeService;
import service.impl.EmployServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletEmployee",urlPatterns = {"", "/employee"})
public class ServletEmployee extends HttpServlet {
    private EmployeeService employeeService = new EmployServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/employee/addNewEmployee.jsp").forward(request,response);
                break;
            default:
                ArrayList<Employee> employeeList = employeeService.findAllEmployee();
                request.setAttribute("employeeList" , employeeList);
                request.getRequestDispatcher("/employee/employee.jsp").forward(request,response);
                break;
        }
    }
}
