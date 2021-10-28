package repository.impl;

import bean.Employee;
import repository.DbConnection;
import repository.EmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements EmployeeRepository {
    @Override
    public ArrayList<Employee> findAllEmployee() {
        Connection connection = DbConnection.getConnection();
        ArrayList<Employee> employeeList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("call select_nhan_vien()");
            ResultSet resultSet = preparedStatement.executeQuery();
            Employee employee ;
            while (resultSet.next()) {
                    employee = new Employee();
                    employee.setEmployeeCode(resultSet.getInt("id_nhan_vien"));
                    employee.setFirstName(resultSet.getString("ho"));
                    employee.setLastName(resultSet.getString("ten"));
                    employee.setPosition(resultSet.getString("ten_vi_tri"));
                    employee.setDegree(resultSet.getString("trinh_do"));
                    employee.setDateOfBirth(resultSet.getString("ngay_sinh"));
                    employee.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                    employee.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                    employee.setEmail(resultSet.getString("email"));
                    employee.setSalary(resultSet.getFloat("luong"));
                    employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }


}
