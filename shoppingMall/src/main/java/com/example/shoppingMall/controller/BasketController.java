package com.example.shoppingMall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.shoppingMall.dao.IAdminDao;
import com.example.shoppingMall.dao.IBasketDao;
import com.example.shoppingMall.dto.Member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/basket")
public class BasketController {
	
	@Autowired
	private IBasketDao basketDao;
	@Autowired
	private IAdminDao adminDao;
	
	@RequestMapping("/putBasket")
	public String putBasket(HttpServletRequest request, HttpSession session, Model model) {
		String product_no = request.getParameter("product_no");
		Member member = (Member)session.getAttribute("loginMember");
		if(member != null) {
			int mem_no = member.getMem_no();
			basketDao.inputBasket(mem_no, product_no, 1);
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "장바구니 담기는 회원 서비스입니다. 로그인 페이지로 이동하시겠습니까?");
			return "member/productDetail";
		}
	}
	
	@RequestMapping("/basketList")
	public String getBasketList(HttpServletRequest request, HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("loginMember");
		if(member != null) {
			int mem_no = member.getMem_no();
			model.addAttribute("basketList", basketDao.getBasketList(mem_no));
			return "member/basket";
		} else {
			return "redirect:/";
		}
	}
	//바로 구매하기
	@RequestMapping("/oneProductOrder")
	public String oneProductOrder(HttpServletRequest request, Model model,HttpSession session) {
		Member member = (Member)session.getAttribute("loginMember");
		if(member != null) {
			String product_no = request.getParameter("product_no");
			System.out.println(product_no);
			model.addAttribute("dto", adminDao.getProductDetail(product_no));
			return "member/oneProductBasket";
		} else {
			return "member/loginForm";
		}
	}
	//바로 구매하기
	@RequestMapping("/oneOrderForm")
	public String oneOrderForm(HttpServletRequest request, HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("loginMember");
		model.addAttribute("dto", member);
		
		String product_no = request.getParameter("product_no");
		model.addAttribute("product_no", product_no);
		
		String quantity = request.getParameter("product_order_quantity");
		model.addAttribute("product_order_quantity", quantity);
		return "member/orderForm";
	}
	
	@RequestMapping("/productOrder")
	public String productOrder(@RequestParam("selectedProduct[]") List<Integer> selectedProducts, HttpServletRequest request, Model model) {
		
		return "";
	}
	
	@RequestMapping("/orderForm")
	public String orderForm(@RequestParam("selectedProduct[]") List<Integer> selectedProducts, HttpServletRequest request, HttpSession session, Model model) {
		for(Integer product_no : selectedProducts) {
			System.out.println(product_no);
			model.addAttribute("product_no", product_no);
		}
		
		Member member = (Member)session.getAttribute("loginMember");
		model.addAttribute("dto", member);
		
		String product_no = request.getParameter("product_no");
		model.addAttribute("product_no", product_no);
		
		String quantity = request.getParameter("product_order_quantity");
		model.addAttribute("product_order_quantity", quantity);
		return "member/orderForm";
	}
	
	@RequestMapping("/order")
	public String order(HttpServletRequest request, HttpSession session, Model model) {
		long currentTimeMillis = System.currentTimeMillis();
		long order_no = currentTimeMillis / 1000;
		
		String product_no = request.getParameter("product_no");
		System.out.println(product_no);
		model.addAttribute("product_no", product_no);
		
		Member member = (Member)session.getAttribute("loginMember");
		int mem_no = member.getMem_no();
		
		String order_addr = request.getParameter("order_addr");
		
		String product_order_quantityStr = request.getParameter("product_order_quantity");
		
		int product_order_quantity = Integer.parseInt(product_order_quantityStr);

		int inventory = basketDao.checkInventory(product_no);
		
		if(inventory >= product_order_quantity) {
			basketDao.order(order_no, product_no, mem_no,order_addr, product_order_quantity);
			basketDao.minusInventory(inventory, product_order_quantityStr, product_no);
			model.addAttribute("message", "구매가 완료되었습니다.");
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "현재 최대 "+inventory+"개까지 구매 가능합니다.");
			return "redirect:/memberProductDetail?product_no="+product_no;
		}
	}
	
	
	
	
	
	
	
}
