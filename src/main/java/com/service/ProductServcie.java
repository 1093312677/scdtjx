package com.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.impl.DaoImpl;
import com.entity.ModelImage;
import com.entity.Product;
import com.entity.ProductModel;

/**
 * ��Ʒ�߼�����
 * @author kone
 * 2017.4.22
 */
@Service
public class ProductServcie {
	@Autowired
	private DaoImpl daoImpl;
	/**
	 * �����Ʒ
	 * @param user
	 * @return
	 */
	public boolean saveProduct(Product product) {
		return daoImpl.save(product);
	}
	
	public List<Product> viewProduct() {
		List<Product> products = daoImpl.findAll("Product");
		daoImpl.closeSession();
		return products;
	}
	/**
	 * ����ͺ�
	 * @param file
	 * @param productModel
	 * @return
	 */
	public boolean addModel(int productId, MultipartFile []file, ProductModel productModel, String path){
		List<ModelImage> modelImages = new ArrayList<ModelImage>();
		ModelImage modelImage = null;
//		���ò�Ʒ����
		Product product = new Product();
		product.setId(productId);
		productModel.setProduct(product);
		for(int i=0;i<file.length;i++) {
			String origName = file[i].getOriginalFilename();
			int newNameIndex = origName.lastIndexOf('.');
			if(newNameIndex > 0) {
				String suffix = origName.substring(newNameIndex);
				long name = System.currentTimeMillis();
//				�ļ��������
				String fileName = String.valueOf(name)+(int)(Math.random()*10000)+suffix;
				File file2 = new File(path,fileName);
				if(i == 0) {
					productModel.setCoverPhoto(fileName);
				} else {
					modelImage = new ModelImage();
					modelImage.setImageName(fileName);
					modelImage.setProductModel(productModel);
					modelImages.add(modelImage);
				}
				try {
					file[i].transferTo(file2);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		productModel.setModelImages(modelImages);
		if(daoImpl.save(productModel)) {
			return true;
		}
		return false;
	}
	
	/**
	 * �鿴�ͺ�
	 * @param productId
	 * @return
	 */
	public List<ProductModel> viewProductModel(String productId) {
		List<ProductModel> productModels = daoImpl.findBy("ProductModel", "productId", productId);
		daoImpl.closeSession();
		return productModels;
	}
	/**
	 * �鿴�ͺ�����
	 * @param modelId
	 * @return
	 */
	public List<ProductModel> viewModelOne(String modelId) {
		List<ProductModel> productModels = daoImpl.findById("ProductModel", modelId);
		daoImpl.closeSession();
		return productModels;
	}
	
	/**
	 * �鿴��Ʒ����
	 * @param modelId
	 * @return
	 */
	public List<Product> viewProductOne(String id) {
		List<Product> products = daoImpl.findById("Product", id);
		daoImpl.closeSession();
		return products;
	}
	/**
	 * ɾ���ͺ�
	 * @param modelId
	 * @return
	 */
	public boolean deleteModel(String modelId, String path) {
		List<ProductModel> productModels = daoImpl.findById("ProductModel", modelId);
		daoImpl.closeSession();
		if(productModels.size() > 0 ) {
			if(daoImpl.delete(productModels.get(0))) {
				for(int i=0;i<productModels.get(0).getModelImages().size();i++) {
					File file = new File(path,productModels.get(0).getModelImages().get(i).getImageName() );
					if(file.exists()) {
						file.delete();
					}
				}
				File file = new File(path,productModels.get(0).getCoverPhoto());
				if(file.exists()) {
					file.delete();
				}
				return true;
			}
			return false;
		} else {
			return false;
		}
	}
	/**
	 * ɾ����Ʒ
	 * @param productId
	 * @return
	 */
	public boolean deleteProduct(String productId, String path) {
		List<Product> products= daoImpl.findById("Product", productId);
		daoImpl.closeSession();
		if(products.size() > 0 ) {
			if(daoImpl.delete(products.get(0))) {
				for(int i=0;i<products.get(0).getProductModels().size();i++) {
					for(int j=0;j<products.get(0).getProductModels().get(i).getModelImages().size();j++) {
						File file = new File(path,products.get(0).getProductModels().get(i).getModelImages().get(j).getImageName() );
						if(file.exists()) {
							file.delete();
						}
					}
					
					File file = new File(path,products.get(0).getProductModels().get(i).getCoverPhoto());
					if(file.exists()) {
						file.delete();
					}
					
				}
				
				return true;
			}
			return false;
		} else {
			return false;
		}
	}
	/**
	 * ���²�Ʒ
	 * @param name
	 * @param id
	 * @return
	 */
	public boolean update(String name ,String id) {
		return daoImpl.updateBy(name, id);
	}
	/**
	 * �����ͺ�
	 * @param productModel
	 * @return
	 */
	public boolean updateModel(ProductModel productModel) {
		return daoImpl.updateModel(productModel);
	}
}
