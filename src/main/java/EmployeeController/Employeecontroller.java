package EmployeeController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import EmployeeService.EmployeeService;
import entities.Employee;

@Controller
@RequestMapping("/employees")
public class Employeecontroller {

@Autowired
	private EmployeeService employeeservice;

     @GetMapping("/fetch")
    public String getAllEmployees(Model model)
    {
    	 model.addAttribute("employees",employeeservice.getAllemployees());
    	 return "viewEmployees";
    }
     @GetMapping("/fetch/{id}")
     public String getEmployeeById(@PathVariable Long id, Model model)
     {
         model.addAttribute("employee", employeeservice.getEmployeeById(id));
         return "viewEmployee";
     }
     
     @PostMapping("/save")
     public String saveEmployee(@ModelAttribute Employee employee)
     {
    	 employeeservice.saveEmployee(employee);
    	 return "redirect:/employees/fetch";
     }
     
     @PostMapping("/update")
     public String updateEmployee(@ModelAttribute Employee employee)
     {
    	 employeeservice.updateEmployee(employee);
    	 return "redirect:/employees/fetch";
   }
     @GetMapping("/delete/{id}")
     public String deleteEmployee(@PathVariable Long id)
     {
    	 employeeservice.deleteEmployee(id);
    	 return "redirect:/employees/fetch";
     }
     
     
}
