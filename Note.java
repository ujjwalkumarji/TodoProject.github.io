package com.entities;

import java.sql.Date;
import java.util.Random;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
@Entity
@Table(name="note")
public class Note {

	@Id
	private int id;
	private String title;
	@Column(length=1500)
	private String content;
	@CreationTimestamp
	private  Date addDate;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
//	public Note(int id, String title, String content, Date addDate) {
//		super();
//		this.id = id;
//		this.title = title;
//		this.content = content;
//		this.addDate = addDate;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Note(String title, String content) {
		super();
		this.id=new Random().nextInt(10000);
		this.title = title;
		this.content = content;
	
	}
	
	
	
}
