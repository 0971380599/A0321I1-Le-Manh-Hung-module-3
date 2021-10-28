package bean;

public class Employee extends Person {
    private int employeeCode;
    private String degree;
    private String position;
    private float salary;

    public Employee() {
    }

    public Employee(int employeeCode, String degree, String position, float salary) {
        this.employeeCode = employeeCode;
        this.degree = degree;
        this.position = position;
        this.salary = salary;
    }

    public Employee(String firstName, String lastName, String dateOfBirth, String sex, String identityCardNumber, String telephoneNumber, String email, int employeeCode, String degree, String position, float salary) {
        super(firstName, lastName, dateOfBirth, sex, identityCardNumber, telephoneNumber, email);
        this.employeeCode = employeeCode;
        this.degree = degree;
        this.position = position;
        this.salary = salary;
    }

    public int getEmployeeCode() {
        return employeeCode;
    }

    public void setEmployeeCode(int employeeCode) {
        this.employeeCode = employeeCode;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "employeeCode=" + employeeCode +
                ", degree='" + degree + '\'' +
                ", position='" + position + '\'' +
                ", salary=" + salary +
                "} " + super.toString();
    }
}
