package com.example.securityApp.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.securityApp.dao.IResponsable;
import com.example.securityApp.entities.Responsable;

@RestController
public class RestResponsable {
	@Autowired
	private IResponsable iresponsable;
	
	
	
	@GetMapping(value= {"/responsable"})
	public List<Responsable> getAll(){
		return iresponsable.findAll();
	}
	
	
	@GetMapping(value= {"/responsable/{id}"})
	public Optional<Responsable> getRespoById(@PathVariable int id) {
		return iresponsable.findById(id);
	}
	
	
	@PostMapping(value= {"/responsable"},consumes = {"application/json"})
	public Responsable insertOne(@RequestBody Responsable respo) {
		iresponsable.save(respo);
		return respo;
	}
	
	
	@DeleteMapping(value= {"/responsable/{id}"})
	public Responsable deleteOne(@PathVariable int id) {
		Responsable rp = iresponsable.findById(id).orElse(null);
		iresponsable.deleteById(id);
		return rp;
	}
	
	
	
	
}
