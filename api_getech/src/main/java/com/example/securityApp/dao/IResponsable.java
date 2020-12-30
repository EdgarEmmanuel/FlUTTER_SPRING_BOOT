package com.example.securityApp.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Departement;
import com.example.securityApp.entities.Responsable;

public interface IResponsable extends JpaRepository<Responsable, Integer> {
	@Query("SELECT c FROM departement c WHERE c.id_respo=?1")
	public Departement getResponsableById(int id_respo);
}
