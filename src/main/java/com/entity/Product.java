package com.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String productName;
	@OneToMany(mappedBy="product",cascade={CascadeType.ALL},fetch=FetchType.LAZY)
	private List<ProductModel> productModels = new ArrayList<ProductModel>();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public List<ProductModel> getProductModels() {
		return productModels;
	}
	public void setProductModels(List<ProductModel> productModels) {
		this.productModels = productModels;
	}
	
	
}
