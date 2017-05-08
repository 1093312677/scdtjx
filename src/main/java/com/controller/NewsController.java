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

import com.entity.News;
import com.entity.ProductModel;
import com.service.NewsService;
/**
 * 新闻发布的控制器
 * @author kone
 * 2017.4.22
 */
@Controller
@RequestMapping("/news") 
public class NewsController {
	@Autowired
	private NewsService newsService;
	/**
	 * 添加新闻
	 * @param file
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("/addNews") 
	public String addNews( News news, @RequestParam(value = "file", required = false) MultipartFile []file,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(newsService.addNews(file, news, path)) {
			request.setAttribute("message", "保存成功");
			request.setAttribute("path", "page/news/addNews.jsp");
			return "common/success";
		} else {
			request.setAttribute("message", "保存失败");
			request.setAttribute("path", "page/news/addNews.jsp");
			return "common/failed";
		}
	}
	
	
	/**
	 * 查看新闻
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewNews") 
	public String viewNews(String type, HttpServletRequest request,HttpServletResponse response) {
		List<News> news = null;
		news = newsService.viewNews();
		request.setAttribute("news", news);
		if("bg".equals(type)) {
			return "news/viewNews";
		} else {
			return null;
		}
		
	}
	/**
	 * 查看新闻详情
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewNewslOne") 
	public String viewNewslOne(String newsId, HttpServletRequest request,HttpServletResponse response) {
		List<News> news = null;
		news = newsService.viewNewslOne(newsId);
		if(news.size() > 0 ) {
			request.setAttribute("news", news.get(0));
		} else {
			request.setAttribute("news", new News());
		}
		
		return "news/viewNewsOne";
	}
	
	/**
	 * 删除新闻
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/deleteNews") 
	public String deleteNews(String id, HttpServletRequest request,HttpServletResponse response) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(newsService.deleteNews(id, path)) {
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
}
