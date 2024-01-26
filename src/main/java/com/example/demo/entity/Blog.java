package com.example.demo.entity;
import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Blog {
	
	@Id @GeneratedValue
	private Integer id;
	private String titre;
	private String content;
	private String img;
	private Date date_publication;
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Blog(Integer id, String titre, String content, String img, Date date_publication) {
		super();
		this.id = id;
		this.titre = titre;
		this.content = content;
		this.img= img;
		this.date_publication = date_publication;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate_publication() {
		return date_publication;
	}
	public void setDate_publication(Date date_publication) {
		this.date_publication = date_publication;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
