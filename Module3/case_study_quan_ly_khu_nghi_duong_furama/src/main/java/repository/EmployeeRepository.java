package repository;

import bean.Employee;

import java.util.ArrayList;

public interface EmployeeRepository {
    ArrayList<Employee> findAllEmployee();


}
