package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.entity.Product;
import com.entity.ProductModel;
import com.service.ProductServcie;

/**
 * ��Ʒ������
 * @author kone
 * 2017.4.22
 */
@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductServcie productServcie;
	/**
	 * ���Ӳ�Ʒ����
	 * @param user
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addProduct") 
	public String addProduct(Product product, HttpServletRequest request,HttpServletResponse response) {
		if(productServcie.saveProduct(product)) {
			request.setAttribute("message", "����ɹ�");
			request.setAttribute("path", "page/product/addProduct.jsp");
			return "common/success";
		} else {
			request.setAttribute("message", "����ʧ��");
			request.setAttribute("path", "page/product/addProduct.jsp");
			return "common/failed";
		}
	}
	/**
	 * �鿴��Ʒ
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewProduct") 
	public String viewProduct(HttpServletRequest request,HttpServletResponse response) {
		List<Product> products = null;
		products = productServcie.viewProduct();
		request.setAttribute("products", products);
		return "product/viewProduct";
	}
	/**
	 * ����ͺ�֮ǰ�鿴��Ʒ
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addModelView") 
	public String addModelView(HttpServletRequest request,HttpServletResponse response) {
		List<Product> products = null;
		products = productServcie.viewProduct();
		request.setAttribute("products", products);
		return "product/addModelView";
	}
	/**
	 * ����ͺ�
	 * @param file
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("/addModel") 
	public String addModel(int productId, ProductModel productModel, @RequestParam(value = "file", required = false) MultipartFile []file,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(productServcie.addModel(productId, file, productModel, path)) {
			request.setAttribute("message", "����ɹ�");
			request.setAttribute("path", "product/addModelView.do");
			return "common/success";
		} else {
			request.setAttribute("message", "����ʧ��");
			request.setAttribute("path", "product/addModelView.do");
			return "common/failed";
		}
	}
	
	/**
	 * �鿴�ͺ�
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewProductModel") 
	public String viewProductModel(String productId, HttpServletRequest request,HttpServletResponse response) {
		List<ProductModel> productModels = null;
		productModels = productServcie.viewProductModel(productId);
		request.setAttribute("productModels", productModels);
		return "product/viewProductModel";
	}
	/**
	 * �鿴�ͺ�����
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewModelOne") 
	public String viewModelOne(String modelId, HttpServletRequest request,HttpServletResponse response) {
		List<ProductModel> productModels = null;
		productModels = productServcie.viewModelOne(modelId);
		if(productModels.size() > 0 ) {
			request.setAttribute("productModel", productModels.get(0));
		} else {
			request.setAttribute("productModel", new ProductModel());
		}
		
		return "product/viewProductModelOne";
	}
	
	/**
	 * ɾ���ͺ�
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/deleteModel") 
	public String deleteModel(String id, HttpServletRequest request,HttpServletResponse response) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(productServcie.deleteModel(id, path)) {
			try {
				response.getWriter().println(1);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().println(0);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	
	/**
	 * ɾ����Ʒ
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/deleteProduct") 
	public String deleteProduct(String id, HttpServletRequest request,HttpServletResponse response) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(productServcie.deleteProduct(id, path)) {
			try {
				response.getWriter().println(1);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().println(0);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	/**
	 * �鿴��Ʒ����
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewModelOneAjax") 
	public String viewModelOneAjax(String id, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		List<Product> products = null;
		session.setAttribute("id", id);
		products = productServcie.viewProductOne(id);
		if(products.size() > 0 ) {
			Product product = new Product();
			product.setProductName(products.get(0).getProductName());
			JSONArray json = new JSONArray();
			json.add(product);
			try {
				response.getWriter().println(json.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		return null;
	}
	/**
	 * ����
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/updateProduct") 
	public String updateProduct(String name, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		String id = (String) session.getAttribute("id");
		
		if(productServcie.update(name, id)) {
			try {
				response.getWriter().println(1);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().println(0);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	/**
	 * �鿴��Ʒ����
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewModelAjax") 
	public String viewModelAjax(String id, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		
		List<ProductModel> productModels = null;
		productModels = productServcie.viewModelOne(id);
		session.setAttribute("id", id);
		if(productModels.size() > 0 ) {
			ProductModel productModel = new ProductModel();
			productModel.setIntroduce(productModels.get(0).getIntroduce());
			productModel.setPower(productModels.get(0).getPower());
			productModel.setProductModelName(productModels.get(0).getProductModelName());
			productModel.setWeight(productModels.get(0).getWeight());
			JSONArray json = new JSONArray();
			json.add(productModel);
			try {
				response.getWriter().println(json.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		return null;
	}
	
	/**
	 * �����ͺ�
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/updateProductModel") 
	public String updateProductModel(ProductModel productModel, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		String id = (String) session.getAttribute("id");
		productModel.setId(Integer.valueOf(id));
		if(productServcie.updateModel(productModel)) {
			try {
				response.getWriter().println(1);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().println(0);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
}
