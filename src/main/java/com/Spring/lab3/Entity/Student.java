package com.Spring.lab3.Entity;

import java.util.List;

import javax.validation.constraints.NotNull;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Student {
	@NotNull(message = "Chua nhap ten")
	@javax.validation.constraints.NotEmpty(message = "Chua nhap ten")
	@javax.validation.constraints.NotBlank(message = "Chua nhap ten")
	private String name;
	
	@javax.validation.constraints.NotEmpty
	private	String email;
	
	@javax.validation.constraints.NotEmpty(message = "Chua nhap ten")
	private	Double marks;
	
	@javax.validation.constraints.NotEmpty
	private	Boolean gender;
	private	String faculty;
	List<String> hobbies;
}
