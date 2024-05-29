package com.example.shoppingMall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.shoppingMall.dto.Product;

@Mapper
public interface IAdminDao {
	public void regProduct(@Param("product_name") String product_name, @Param("product_price") String product_price, @Param("product_info") String product_info, @Param("product_inventory") String product_inventory, @Param("product_soldout") String product_soldout, @Param("product_warehousinng") String product_warehousinng, @Param("imgurl") String imgurl);
	public List<Product> getProductList();
	public Product getProductDetail(@Param("product_no") String product_no);
	public void productDelete(@Param("product_no") String product_no);
	public void productImgModify(@Param("product_name") String product_name, @Param("product_price") String product_price, @Param("product_info") String product_info, @Param("product_inventory") String product_inventory, @Param("product_warehousinng") String product_warehousinng, @Param("imgurl") String imgurl, @Param("product_no") String product_no);
	public void productModify(@Param("product_name") String product_name, @Param("product_price") String product_price, @Param("product_info") String product_info, @Param("product_inventory") String product_inventory, @Param("product_warehousinng") String product_warehousinng, @Param("product_no") String product_no);

}
