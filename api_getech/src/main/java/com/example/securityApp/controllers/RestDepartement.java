package com.example.securityApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.securityApp.dao.IDepartement;
import com.example.securityApp.entities.Departement;

@RestController
public class RestDepartement {
	@Autowired
	private IDepartement idepartement;
	
	
	@GetMapping(value= {"/departements"})
	public List<Departement> getAllDepartements(){
		return idepartement.findAll();
	}
	
	
	@PostMapping(value= {"/departement"},consumes = {"application/json"})
	public Departement insertOne(@RequestBody() Departement departement) {
		idepartement.save(departement);
		return departement;
	}
	
	@DeleteMapping(value= {"/"})
	public int deleteOne() {
		return 0;
	}
	
	
	
	
}
