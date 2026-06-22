package EmployeeService;

import java.util.List;

import entities.Employee;

public interface EmployeeService {
     
	 
	List<Employee> getAllemployees();
	Employee getEmployeeById(Long id);
<<<<<<< HEAD
    Employee updateEmployee(Long id, Double salary);
    void deleteEmployee(Long id);
=======
    Employee updateEmployee(Employee employee);
    void     deleteEmployee(Long id);
>>>>>>> branch 'master' of https://github.com/utkarsh1303803/EmployeeCrudOperation.git
    Employee saveEmployee(Employee employee);
 }
