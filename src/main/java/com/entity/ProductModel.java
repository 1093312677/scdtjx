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
 * 产品型号
 * @author kone
 *
 */
@Entity
@Table(name="productModel")
public class ProductModel {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String productModelName;
	private String weight;//重量
	private String power;//功率
	@Column(columnDefinition="TEXT")  
	private String introduce;
	
	private String coverPhoto;//封面图片
//	和产品多对一
	@ManyToOne
	@JoinColumn(name="productId")
	@Basic(fetch=FetchType.LAZY)
	private Product product;
	
	@OneToMany(mappedBy="productModel", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<ModelImage> modelImages = new ArrayList<ModelImage>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductModelName() {
		return productModelName;
	}

	public void setProductModelName(String productModelName) {
		this.productModelName = productModelName;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}


	public List<ModelImage> getModelImages() {
		return modelImages;
	}

	public void setModelImages(List<ModelImage> modelImages) {
		this.modelImages = modelImages;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getCoverPhoto() {
		return coverPhoto;
	}

	public void setCoverPhoto(String coverPhoto) {
		this.coverPhoto = coverPhoto;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public List<Product> getProductModels() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
