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

import org.hibernate.annotations.Columns;

/**
 * 各个型号的图片
 * @author kone
 *
 */
@Entity
@Table(name="modelImage")
public class ModelImage {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String imageName;
	
	@ManyToOne
	@JoinColumn(name="modelId")
	@Basic(fetch=FetchType.EAGER)
	private ProductModel productModel;
	
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
	public ProductModel getProductModel() {
		return productModel;
	}
	public void setProductModel(ProductModel productModel) {
		this.productModel = productModel;
	}
	
}
