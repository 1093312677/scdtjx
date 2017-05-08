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
 * π§≥Ã≥–Ω”Õº∆¨
 * @author kone
 *
 */
@Entity
@Table(name="underImage")
public class UnderImage {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String imageName;
	@ManyToOne
	@JoinColumn(name="underId")
	@Basic(fetch=FetchType.EAGER)
	private UnderTake underTake;
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
	public UnderTake getUnderTake() {
		return underTake;
	}
	public void setUnderTake(UnderTake underTake) {
		this.underTake = underTake;
	}
	
}
