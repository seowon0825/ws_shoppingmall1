package com.example.shoppingMall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface IBasketDao {

	public void inputBasket(@Param("mem_no") int mem_no, @Param("product_no") String product_no, @Param("basket_quantity") int basket_quantity);
}
