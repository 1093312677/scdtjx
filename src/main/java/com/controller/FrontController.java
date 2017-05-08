package com.controller;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;
import com.entity.News;
import com.entity.Product;
import com.entity.ProductModel;
import com.entity.UnderTake;
import com.service.FrontService;
/**
 * 门户展示控制
 * @author kone
 * 2017.4.26
 */
@Controller
public class FrontController {
	@Autowired
	private FrontService frontService;
	/**
	 * 查看主页
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/index") 
	public String viewAll(String id, HttpServletRequest request,HttpServletResponse response) {
		List<Product> products = frontService.getProduct();
		List<News> news = frontService.getNews();
		List<UnderTake> underTakes = frontService.getUnderTake();
		
		if(id == null) {
			if( products.size() > 0 ) {
				request.setAttribute("product", products.get(0));
				request.setAttribute("id", products.get(0).getId());
			} else {
				request.setAttribute("product", new Product() );
			}
		} else {
			request.setAttribute("id", id);
			request.setAttribute("product", frontService.getProductOne(id) );
		}
		
		request.setAttribute("products", products);
		request.setAttribute("news", news);
		request.setAttribute("underTakes", underTakes);
		return "front/index";
	}
	/**
	 * 查看全部产品
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/product") 
	public String product(HttpServletRequest request,HttpServletResponse response) {
		List<Product> products = frontService.getProduct();
		
		request.setAttribute("products", products);
	
		return "front/product";
	}
	/**
	 * 查看产品
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/productOne") 
	public String productOneAjax(String id, HttpServletRequest request,HttpServletResponse response) {
		Set<ProductModel> productModels = frontService.getProductOne2(id);
		JSONArray json = new JSONArray();
		json.add(productModels);
		String str = json.toJSONString();
		str = str.substring(1, str.length() - 1);
//		System.out.println(str);
		try {
			response.getWriter().println(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	/**
	 * 查看产品详情
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/introduce") 
	public String productOne(String id,HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("model", frontService.getProduceOne(id));
		return "front/introduce";
	}
	/**
	 * 查看承接
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/underTake") 
	public String underTake(String id,HttpServletRequest request,HttpServletResponse response) {
		List<UnderTake> underTakes = frontService.getUnderTakeAll();
		if(id == null) {
			if( underTakes.size() > 0 ) {
				request.setAttribute("underTakeOne", underTakes.get(0));
			} else {
				request.setAttribute("underTakeOne", new UnderTake() );
			}
		} else {
			request.setAttribute("underTakeOne", frontService.getUnderTakeOne(id) );
		}
		request.setAttribute("underTakes", underTakes);
		return "front/underTake";
	}
	/**
	 * 查看新闻
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/news") 
	public String news(String id, HttpServletRequest request,HttpServletResponse response) {
		
		List<News> news = frontService.getNews();
		
		if(id == null) {
			if(news.size() > 0) {
				request.setAttribute("newsOne", news.get(0));
			} else {
				request.setAttribute("newsOne", new News());
			}
		} else {
			request.setAttribute("newsOne",frontService.getNewsOne(id));
		}
		request.setAttribute("news", news);
		return "front/news";
	}
		
}
