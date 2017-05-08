package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.AccountService;

/**
 * 帐号的操作
 * @author kone
 * 2017.4.22
 */
@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private AccountService accountService;
	/**
	 * 增加用户
	 * @param user
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addUser") 
	public String addUser(User user, HttpServletRequest request,HttpServletResponse response) {
		if(accountService.save(user)) {
			request.setAttribute("message", "保存成功");
			request.setAttribute("path", "page/account/addAccount.jsp");
			return "common/success";
		} else {
			request.setAttribute("message", "保存失败");
			request.setAttribute("path", "page/account/addAccount.jsp");
			return "common/failed";
		}
	}
	
	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		if(accountService.login(user)){
			session.setAttribute("user", user);
			return "bg/index";
		}
		try {
			response.sendRedirect("../login.html");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		session.removeAttribute("user");
		session.setAttribute("user", null);
		try {
			response.sendRedirect("../login.html");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 更新密码
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(String password, HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		User user = (User) session.getAttribute("user");
		user.setPassword(password);
		accountService.updateUser(user);
		try {
			response.sendRedirect("../login.html");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
