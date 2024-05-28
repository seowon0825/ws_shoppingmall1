package com.example.shoppingMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.shoppingMall.dao.IBasketDao;
import com.example.shoppingMall.dto.Member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/basket")
public class BasketController {
	
	@Autowired
	private IBasketDao basketDao;
	
	@RequestMapping("/putBasket")
	public String putBasket(HttpServletRequest request, HttpSession session, Model model) {
		String product_no = request.getParameter("product_no");
		Member member = (Member)session.getAttribute("loginMember");
		if(member != null) {
			int mem_no = member.getMem_no();
			basketDao.inputBasket(mem_no, product_no, 1);
			return "member/basket";
		} else {
			model.addAttribute("errorMsg", "장바구니 담기는 회원 서비스입니다. 로그인 페이지로 이동하시겠습니까?");
			return "member/productDetail";
		}
	}
	
}
