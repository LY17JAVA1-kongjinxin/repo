package com.qhit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.entity.Admin;
import com.qhit.service.AdminService;
import com.qhit.utils.Pager;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	// @Qualifier("adminServiceImpl")
	private AdminService service;

	public void setService(AdminService service) {
		this.service = service;
	}

	@RequestMapping("/login")
	public String login(String txtUserName, String txtPwd, HttpServletRequest request) {
		Admin ad = service.login(txtUserName, txtPwd);
		System.out.println(txtUserName + "====" + txtPwd);
		if (ad != null) {
			HttpSession session = request.getSession();
			session.setAttribute("ADMIN", ad);
			return "admin/index";
		} else {
			return "admin/login";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "admin/login";
	}

	@RequestMapping("/findAll")
	public ModelAndView findAllAdmins(Integer pageNo) {
		if(pageNo==null) {
			pageNo=1;
		}
		ModelAndView mv =new ModelAndView("admin/adminList");
		List<Admin> list = service.findAllAdmins();
		// 分页处理
		@SuppressWarnings("unchecked")
		Pager<Admin> pager = Pager.getPager();
		// 获取当页信息
		List<Admin> sublist = pager.queryPager(list, pageNo);
		mv.addObject("list", sublist);
		mv.addObject("pager", pager);
		return mv;
	}
	
	@RequestMapping("/findAdminByName")
	public ModelAndView findAdminByName(String fname) {
		
		ModelAndView mv =new ModelAndView("admin/adminList");
		List<Admin> list = service.findAdminByName(fname);
		// 分页处理
		@SuppressWarnings("unchecked")
		Pager<Admin> pager = Pager.getPager();
		// 获取当页信息
		List<Admin> sublist = pager.queryPager(list, 1);
		mv.addObject("list", sublist);
		mv.addObject("pager", pager);
		return mv;
	}
	
	@RequestMapping("/del")
	public String delAdmin(Integer aid,Integer pageNo) {
		if(pageNo==null) {
			pageNo=1;
		}
		service.delAdmin(aid);
		return "redirect:/admin/findAll?pageNo="+pageNo;
	}
	
	@RequestMapping("/add")
	public String addAdmin(Admin ad) {
		service.addAdmin(ad);
		return "redirect:/admin/findAll";
	}
	@RequestMapping("/findById")
	public ModelAndView findById(Integer aid,Integer pageNo) {
		if(pageNo==null) {
			pageNo=1;
		}
		ModelAndView mv =new ModelAndView("admin/updAdmin");
		Admin ad=service.findAdminById(aid);
		mv.addObject("admin", ad);
		mv.addObject("pageNo", pageNo);
		return mv;
	}
	
	@RequestMapping("/upd")
	public String updAdmin(Admin ad,Integer pageNo) {
		service.updAdmin(ad);
		return "redirect:/admin/findAll?pageNo="+pageNo;
	}
}
