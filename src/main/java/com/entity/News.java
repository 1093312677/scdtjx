package com.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 新闻
 * @author kone
 *
 */
@Entity
@Table(name="news")
public class News {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String time;//时间
	@Column(columnDefinition="TEXT")  
	private String introduce;
	
	private String coverPhoto;//封面图片
	
	@OneToMany(mappedBy="news", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<NewsImage> newsImages = new ArrayList<NewsImage>();

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getCoverPhoto() {
		return coverPhoto;
	}

	public void setCoverPhoto(String coverPhoto) {
		this.coverPhoto = coverPhoto;
	}

	public List<NewsImage> getNewsImages() {
		return newsImages;
	}

	public void setNewsImages(List<NewsImage> newsImages) {
		this.newsImages = newsImages;
	}
	
	
}
