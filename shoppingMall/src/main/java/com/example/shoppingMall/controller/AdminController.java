package com.example.shoppingMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.shoppingMall.dao.IAdminDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IAdminDao adminDao;
	
	@RequestMapping("/dashboard")
	public String adminIndex() {
		
		return "admin/dashboard";
	}
	
	@RequestMapping("/regProductForm")
	public String regProductForm() {
		
		return "admin/regProductForm";
	}
	
	@RequestMapping("/regProduct")
	public String regProduct(HttpServletRequest request) {
		String product_name = request.getParameter("product_name");
		String product_price = request.getParameter("product_price");
		String product_info = request.getParameter("product_info");
		product_info = product_info.replace("\n", "<br>");
		String product_inventory = request.getParameter("product_inventory");
		String product_soldout = request.getParameter("product_soldout");
		String product_warehousinng = request.getParameter("product_warehousinng");
		String imgurl = request.getParameter("imgurl");
		
		adminDao.regProduct(product_name, product_price, product_info, product_inventory, product_soldout, product_warehousinng, imgurl);
		return "admin/dashboard";
	}
	
	@RequestMapping("/getProductList")
	public String getProductList(Model model) {
		model.addAttribute("productList", adminDao.getProductList());
		return "admin/productList";
	}
	
	@RequestMapping("/getProductDetail")
	public String getProductDetail(HttpServletRequest request, Model model) {
		String product_no = request.getParameter("product_no");
		model.addAttribute("dto", adminDao.getProductDetail(product_no));
		return "admin/productDetail";
	}
	
	@RequestMapping("/productModityForm")
	public String productModigyForm(HttpServletRequest request, Model model) {
		String product_no = request.getParameter("product_no");
		model.addAttribute("dto", adminDao.getProductDetail(product_no));
		return "admin/productModifyForm";
	}
	
	@RequestMapping("/productModify")
	public String productModify(HttpServletRequest request) {
		String product_name = request.getParameter("product_name");
		String product_price = request.getParameter("product_price");
		String product_info = request.getParameter("product_info");
		String product_inventory = request.getParameter("product_inventory");
		String product_warehousinng = request.getParameter("product_warehousinng");
		String product_no = request.getParameter("product_no");
		String imgurl = request.getParameter("imgurl");
		
		adminDao.productImgModify(product_name, product_price, product_info, product_inventory, product_warehousinng, imgurl, product_no);
		return "redirect:/";
	}
	
	@RequestMapping("/productDelete")
	public String productDelete(HttpServletRequest request) {
		String product_no = request.getParameter("product_no");
		adminDao.productDelete(product_no);
		return "redirect:/admin/getProductList";
	}
	
}	
