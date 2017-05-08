package com.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 工程承接
 * @author kone
 *
 */
@Entity
@Table(name="underTake")
public class UnderTake {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String type;//承接类型
	@Column(columnDefinition="TEXT")  
	private String introduce;
	
	
	@OneToMany(mappedBy="underTake", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<UnderImage> underImages = new ArrayList<UnderImage>();

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


	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<UnderImage> getUnderImages() {
		return underImages;
	}

	public void setUnderImages(List<UnderImage> underImages) {
		this.underImages = underImages;
	}

	
	
}
