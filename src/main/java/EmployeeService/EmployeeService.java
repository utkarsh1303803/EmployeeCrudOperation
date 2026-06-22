package EmployeeService;

import java.util.List;

import entities.Employee;

public interface EmployeeService {
     
	 
	List<Employee> getAllemployees();
	Employee getEmployeeById(Long id);
    Employee updateEmployee(Long id, Double salary);
    void deleteEmployee(Long id);
    Employee saveEmployee(Employee employee);
 }
