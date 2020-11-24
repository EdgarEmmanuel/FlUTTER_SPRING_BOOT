package com.example.securityApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.securityApp.dao.IFormation;
import com.example.securityApp.entities.Formation;

@RestController
public class RestFormation {
	
	@Autowired
	private IFormation iformation;
	
	@GetMapping(value= {"/formations"})
	public List<Formation> getAll(){
		return iformation.findAll();
	}
	
	
	@GetMapping(value= {"/formation/{id_dep}"})
	public List<Formation> getAllFormationOnId(@PathVariable int id_departement){
		return iformation.findFormationByIdDepartement(id_departement);
	}
	
	@PostMapping(value= {"/formation"})
	public Formation saveFormation(@RequestBody() Formation formation) {
		iformation.save(formation);
		return formation;
	}
	
	@DeleteMapping(value= {"/formation/{id}"})
	public Formation deleteFormation(@PathVariable() int id) {
		Formation formation = iformation.getOne(id);
		iformation.delete(iformation.getOne(id));
		return formation;
	}

}
