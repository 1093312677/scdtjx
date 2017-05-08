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

import com.entity.UnderTake;
import com.service.UnderTakeService;
/**
 * 新闻发布的控制器
 * @author kone
 * 2017.4.22
 */
@Controller
@RequestMapping("/under") 
public class UnderTakeController {
	@Autowired
	private UnderTakeService underTakeService;
	/**
	 * 添加新闻
	 * @param file
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("/addUnderTake") 
	public String addUnderTake( UnderTake underTake, @RequestParam(value = "file", required = false) MultipartFile []file,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(underTakeService.addUnderTake(file, underTake, path)) {
			request.setAttribute("message", "保存成功");
			request.setAttribute("path", "page/under/addUnderTake.jsp");
			return "common/success";
		} else {
			request.setAttribute("message", "保存失败");
			request.setAttribute("path", "page/under/addUnderTake.jsp");
			return "common/failed";
		}
	}
	
	
	/**
	 * 查看新闻
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/viewUnderTake") 
	public String viewUnderTake(String type, HttpServletRequest request,HttpServletResponse response) {
		List<UnderTake> underTakes = null;
		underTakes = underTakeService.viewUnderTake();
		request.setAttribute("underTakes", underTakes);
		if("bg".equals(type)) {
			return "under/viewUnderTakes";
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
	@RequestMapping("/viewUnderTakeOne") 
	public String viewUnderTakeOne(String underId, HttpServletRequest request,HttpServletResponse response) {
		List<UnderTake> underTakes = null;
		underTakes = underTakeService.viewUnderTakeOne(underId);
		if(underTakes.size() > 0 ) {
			request.setAttribute("underTake", underTakes.get(0));
		} else {
			request.setAttribute("underTake", new UnderTake());
		}
		
		return "under/viewUnderTakeOne";
	}
	
	/**
	 * 删除新闻
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/deleteUnderTake") 
	public String deleteUnderTake(String id, HttpServletRequest request,HttpServletResponse response) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		if(underTakeService.deleteUnderTake(id, path)) {
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
