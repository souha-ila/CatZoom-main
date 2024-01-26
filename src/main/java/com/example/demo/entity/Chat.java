package com.example.demo.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
@Entity
public class Chat {
	
	@Id @GeneratedValue
	private Integer id;
    private String nom;
    private String race;
    private String description;
    private String image;
	public Chat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Chat(Integer id, String nom, String race, String description, String image) {
		super();
		this.id = id;
		this.nom = nom;
		this.race = race;
		this.description=description;
		this.image = image;
		
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@OneToMany(mappedBy = "chat")
	private List<Demande> demandes;

    
}
