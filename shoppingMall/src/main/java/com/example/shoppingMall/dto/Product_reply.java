package com.example.shoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product_reply {
	private int reply_no;
	private int product_no;
	private int mem_no;
	private String reply_title;
	private String reply_content;
}
