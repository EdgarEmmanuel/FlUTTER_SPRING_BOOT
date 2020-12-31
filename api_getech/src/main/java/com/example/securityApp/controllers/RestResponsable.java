package com.example.securityApp.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.securityApp.dao.IResponsable;
import com.example.securityApp.entities.Departement;
import com.example.securityApp.entities.Responsable;

@RestController
public class RestResponsable {
	@Autowired
	private IResponsable iresponsable;
	
	@GetMapping(value= {"/responsables"})
	public List<Responsable> getAll(){
		return iresponsable.findAll();
	}

	@GetMapping(value= {"/responsables/{id}"})
	public Optional<Responsable> getRespoById(@PathVariable int id) {
		return iresponsable.findById(id);
	}
	
	
	@PostMapping(value= {"/responsables"},consumes = {"application/json"})
	public Responsable insertOne(@RequestBody Responsable respo) {
		iresponsable.save(respo);
		return respo;
	}

	@PostMapping(value={"/login_respo"},consumes = {"application/x-www-form-urlencoded"})
	public Responsable loginREspo(@RequestParam("email") String email, @RequestParam("password") String password){
		return iresponsable.getResponsableByEmailAndPassword(email,password);
	}
	
	
	@DeleteMapping(value= {"/responsables/{id}"})
	public Responsable deleteOne(@PathVariable int id) {
		Responsable rp = iresponsable.findById(id).orElse(null);
		iresponsable.deleteById(id);
		return rp;
	}
	
	
	
	
}
