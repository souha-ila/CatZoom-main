package com.example.demo.entity;
import java.io.Serializable;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Message {
	
	@Id @GeneratedValue
	private Integer id;
	private String name;
	private String email;
	private String content;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Message(Integer id, String name, String email, String content) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.content = content;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	
	
}
