package com.example.shoppingMall.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int product_no;
	private String product_name;
	private int product_price;
	private String product_info;
	private int product_inventory;
	private boolean product_soldout;
	private Date product_warehousinng;
	private String imgurl;
}
