package com.example.shoppingMall.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {
	private int ono;
	private Long order_no;
	private int product_no;
	private int mem_no;
	private String order_addr;
	private Date product_order_date;
	private int product_order_quantity;
	private String product_name;
	private int product_price;
}
