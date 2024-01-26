package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entity.Demande;

public interface DemandeRepository extends CrudRepository<Demande, Integer> {
   
}
