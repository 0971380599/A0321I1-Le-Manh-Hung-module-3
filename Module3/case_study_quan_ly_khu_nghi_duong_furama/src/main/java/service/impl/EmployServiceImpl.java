package service.impl;

import bean.Employee;
import repository.EmployeeRepository;
import repository.impl.EmployeeRepositoryImpl;
import service.EmployeeService;

import java.util.ArrayList;

public class EmployServiceImpl implements EmployeeService {
    EmployeeRepository employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public ArrayList<Employee> findAllEmployee() {
        return employeeRepository.findAllEmployee();
    }
}
