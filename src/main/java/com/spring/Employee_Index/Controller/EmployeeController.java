package com.spring.Employee_Index.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
    
    @GetMapping( "/")
	public String loadLogin() {
		return "index.html";
	}

    @GetMapping( "/edit")
	public String edit() {
		return "edit_employee.html";
	}
    
    @GetMapping( "/new")
	public String newform() {
        return "new_employee.html";
    	}
    
}
