package com.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.impl.DaoImpl;
import com.entity.News;
import com.entity.Product;
import com.entity.ProductModel;
import com.entity.UnderTake;
/**
 * 门户展示逻辑处理
 * @author kone
 * 2017.4.26
 */
@Service
public class FrontService {
	@Autowired
	private DaoImpl daoImpl;
	
	/**
	 * 在主页查看Product
	 * @return
	 */
	public List<Product> getProduct(){
		List<Product> products = daoImpl.findAll("Product");
		for(int i=0;i<products.size();i++) {
			for(int j=0;j<products.get(i).getProductModels().size();j++) {
				products.get(i).getProductModels().get(j).getProductModelName();
			}
		}
		daoImpl.closeSession();
		return products;
	}
	
	/**
	 * viewNews
	 * @param productId
	 * @return
	 */
	public List<News> getNews() {
		List<News> news = daoImpl.findAll("News");
		List<News> news2 = new ArrayList<News>();
		daoImpl.closeSession();
		if(news.size() <= 3) {
			return news;
		}
		else {
			for(int i=0;i<3;i++) {
				news2.add(news.get(i));
			}
			return news2;
		}
		
	}
	public News getNewsOne(String id) {
		List<News> news = daoImpl.findById("News", id);
		daoImpl.closeSession();
		if(news.size() > 0) {
			return news.get(0);
		} else {
			return new News();
		}
		
	}
	
	/**
	 * view UnderTake
	 * @param productId
	 * @return
	 */
	public List<UnderTake> getUnderTake() {
		List<UnderTake> underTakes = daoImpl.findAll("UnderTake");
		daoImpl.closeSession();
		
		return underTakes;
	}
	/**
	 * view UnderTake all
	 * @param productId
	 * @return
	 */
	public List<UnderTake> getUnderTakeAll() {
		List<UnderTake> underTakes = daoImpl.findAll("UnderTake");
		daoImpl.closeSession();
		return underTakes;
	}
	public UnderTake getUnderTakeOne(String id) {
		List<UnderTake> underTakes = daoImpl.findById("UnderTake", id);
		daoImpl.closeSession();
		if(underTakes.size() > 0) {
			return underTakes.get(0);
		} else {
			return new UnderTake();
		}
		
	}
	public ProductModel getProduceOne(String id) {
		List<ProductModel> productModels = daoImpl.findById("ProductModel", id);
		daoImpl.closeSession();
		if(productModels.size() > 0) {
			return productModels.get(0);
		} else {
			return new ProductModel();
		}
		
	}
	public Product getProductOne(String id) {
		List<Product> products = daoImpl.findById2("Product", id);
		if(products.size() > 0) {
			for(int i=0;i<products.get(0).getProductModels().size();i++) {
				products.get(0).getProductModels().get(i).getProductModelName();
			}
			daoImpl.closeSession();
			return products.get(0);
		} else {
			daoImpl.closeSession();
			return new Product();
		}
		
	}
	
	public Set<ProductModel> getProductOne2(String id) {
		List<ProductModel> productModels = daoImpl.findBy("ProductModel", "productId", id);
		Set<ProductModel> set = new HashSet<ProductModel>();
		ProductModel productModel = null;
		List<ProductModel> productModels2 = new ArrayList<ProductModel>();
		for(int i=0;i<productModels.size();i++) {
			productModel = new ProductModel();
			productModel.setCoverPhoto(productModels.get(i).getCoverPhoto());
			productModel.setId(productModels.get(i).getId());
			productModel.setProductModelName(productModels.get(i).getProductModelName());
			
			productModels2.add(productModel);
		}
		set.addAll(productModels2);
		daoImpl.closeSession();
		return set;
	}
	
	
}
