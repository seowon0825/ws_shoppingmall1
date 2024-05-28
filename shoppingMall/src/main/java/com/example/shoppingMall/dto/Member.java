package com.example.shoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int mem_no;
	private String mem_username;
	private String mem_pw;
	private String mem_name;
	private String mem_tel;
	private String mem_addr;
	private String role;
	
	public Member(String mem_username, String mem_pw, String mem_name, String mem_tel, String mem_addr, String role) {
		super();
		this.mem_username = mem_username;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
		this.mem_addr = mem_addr;
		this.role = role;
	}
}
