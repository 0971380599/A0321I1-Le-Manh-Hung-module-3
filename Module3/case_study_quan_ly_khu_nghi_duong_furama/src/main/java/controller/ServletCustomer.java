package controller;

import bean.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletCustomer", urlPatterns = {"/customer", "/customerList"})
public class ServletCustomer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//        switch (action) {
//            case "":
//            default:
//                ArrayList<Employee> employeeList = employeeService.findAllEmployee();
//                request.setAttribute("employeeList" , employeeList);
        request.getRequestDispatcher("customer.jsp").forward(request, response);
//    }
    }
}
