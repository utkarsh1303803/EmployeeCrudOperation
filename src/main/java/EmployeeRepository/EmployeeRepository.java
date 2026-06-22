package EmployeeRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
