package com.Spring.lab3.Controllor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Spring.lab3.Entity.Student;

@Controller
@RequestMapping("/student")
public class StudenController {
	List<Student> list= new ArrayList<>(); 
	@GetMapping("/form")
	public String form(@ModelAttribute("sv") Student sv) {
		sv.setName("Ngo Nhien");
		return "stud";
	}

	@RequestMapping("/save")
	public String save(@Validated @ModelAttribute("sv") Student sv, Errors errors, Model model) {		
		if(sv.getName().equals("")) {
			model.addAttribute("view", "erorr");
			System.out.println("Null Name");
		}
		if (errors.hasErrors()) {		
			model.addAttribute("message", "Vui lòng sửa các lỗi sau:");
		}else {
			model.addAttribute("message", "Chúc mừng, bạn đã nhập đúng");
		}

		
		
		return "stud";
	}

	@ModelAttribute("genders")
	public Map<Boolean, String> getGenders() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Male");
		map.put(false, "Female");
		return map;
	}

	@ModelAttribute("faculties")
	public List<String> getFaculties() {
		return Arrays.asList("CNTT", "DLNHKS", "QTDN");
	}

	@ModelAttribute("hobbies")
	public Map<String, String> getHobbies() {
		Map<String, String> map = new HashMap<>();
		map.put("T", "Travelling");
		map.put("M", "Music");
		map.put("F", "Food");
		map.put("O", "Other");
		return map;
	}

}
