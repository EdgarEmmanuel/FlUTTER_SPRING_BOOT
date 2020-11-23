package com.example.securityApp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Formation;

public interface IFormation extends JpaRepository<Formation, Integer> {

}
