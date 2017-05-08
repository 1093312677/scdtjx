package com.entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * ��ͼƬ
 * @author kone
 *
 */
@Entity
@Table(name="newsImage")
public class NewsImage {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String imageName;
	@ManyToOne
	@JoinColumn(name="newsId")
	@Basic(fetch=FetchType.EAGER)
	private News news;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	
	
}
