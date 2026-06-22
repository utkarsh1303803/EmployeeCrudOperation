package EmployeeService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import EmployeeRepository.EmployeeRepository;
import entities.Employee;

public class EmployeeServiceImpl  implements EmployeeService{


	private EmployeeRepository employeeRepo;
	
	@Autowired
	public EmployeeServiceImpl(EmployeeRepository employeeRepo) {
		this.employeeRepo = employeeRepo;
	}
	public Employee saveEmployee(Employee employee) {
		return employeeRepo.save(employee);
	}
	public List<Employee> getAllemployees() {
		return employeeRepo.findAll();
	}
	@Override
	public Employee getEmployeeById(Long id) {
	    return employeeRepo.findById(id)
	            .orElseThrow(() -> new RuntimeException("Employee not found"));
	}
	@Override
	public Employee updateEmployee(Long id, Double salary) {

	    Employee emp = employeeRepo.findById(id)
	            .orElseThrow(() -> new RuntimeException("Employee Not Found"));

	    emp.setSalary(salary);

	    return employeeRepo.save(emp);
	}
	public void deleteEmployee(Long id) {
		 employeeRepo.deleteById(id);
	}
	
}
