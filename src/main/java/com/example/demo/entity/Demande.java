package com.example.demo.entity;

import jakarta.persistence.*;


@Entity
public class Demande {

    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "utilisateur_id")
    private User utilisateur;

    @ManyToOne
    @JoinColumn(name = "chat_id")
    private Chat chat;


    public Demande() {
        super();
    }

   
    public Demande(User utilisateur, Chat chat) {
        super();
        this.utilisateur = utilisateur;
        this.chat = chat;
    }


	public Demande(Integer id, User utilisateur, Chat chat) {
		super();
		this.id = id;
		this.utilisateur = utilisateur;
		this.chat = chat;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public User getUtilisateur() {
		return utilisateur;
	}


	public void setUtilisateur(User utilisateur) {
		this.utilisateur = utilisateur;
	}


	public Chat getChat() {
		return chat;
	}


	public void setChat(Chat chat) {
		this.chat = chat;
	}

    
}

