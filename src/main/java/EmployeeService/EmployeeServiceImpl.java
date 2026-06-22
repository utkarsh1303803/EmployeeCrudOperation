package EmployeeService;

import java.util.List;

import EmployeeRepository.EmployeeRepository;
import entities.Employee;

public class EmployeeServiceImpl {

	private EmployeeRepository employeeRepo;
	
	public Employee saveEmployee(Employee employee) {
		return employeeRepo.save(employee);
	}
	public List<Employee> getAllemployees() {
		return employeeRepo.findAll();
	}
	public Employee updateEmployee(Long id, Double salary) {
		Employee emp = employeeRepo.findById(id).orElseThrow(()-> new RuntimeException("Employee Not found")) ;
		emp.setSalary(salary);
		return employeeRepo.save(emp);
	}
	public void deleteEmployee(Long id) {
		 employeeRepo.deleteById(id);
	}
	
}
