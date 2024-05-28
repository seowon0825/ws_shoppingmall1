package com.example.shoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Basket {
	private int basket_no;
	private int mem_no;
	private int product_no;
	private int basket_quantity;
}
