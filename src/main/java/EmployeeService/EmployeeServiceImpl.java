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
		return employeeRepo.findById(id) ;
	}
	public void deleteEmployee(Long id) {
		 employeeRepo.deleteById(id);
	}
	
}
