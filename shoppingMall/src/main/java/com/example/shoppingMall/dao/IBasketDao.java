package com.example.shoppingMall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.shoppingMall.dto.Basket;

@Mapper
public interface IBasketDao {
	public void inputBasket(@Param("mem_no") int mem_no, @Param("product_no") String product_no, @Param("basket_quantity") int basket_quantity);
	public List<Basket> getBasketList(@Param("mem_no") int mem_no);
	public void order(@Param("order_no") Long order_no, @Param("product_no") String product_no, @Param("mem_no") int mem_no, @Param("order_addr") String order_addr, @Param("product_order_quantity") int product_order_quantity);
	public int checkInventory(@Param("product_no") String product_no);
	public void minusInventory(@Param("product_inventory") int product_inventory , @Param("product_order_quantity") String product_order_quantity, @Param("product_no") String product_no);
}
