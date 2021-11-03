package service.validate;

import repository.EmployeeRepository;
import repository.impl.EmployeeRepositoryImpl;

public class Validate {
    static EmployeeRepository employeeRepository = new EmployeeRepositoryImpl();
    public static String validateEmployeeCode(Integer employeeCode) {
        String message = null;
        if(employeeRepository.findById(employeeCode) != null) {
            message = "Id bị trùng, mời bạn nhập lại";
        }
        return message;
    }
    public static String validateEmployeeBirth(String dayOfBirth) {
        String message = null;
        String regex = "\\d{4}-[01]\\d-[0-3]\\d";
        if(!dayOfBirth.matches(regex)) {
            message = "Ngày sinh phải có định dạng YYYY-MM-DD";
        }
        return message;
    }
}
