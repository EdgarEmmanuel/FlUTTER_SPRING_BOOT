package com.example.securityApp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Responsable;

public interface IResponsable extends JpaRepository<Responsable, Integer> {

}
