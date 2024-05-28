package com.example.shoppingMall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.shoppingMall.dto.Member;

@Mapper
public interface IMemberDao {
	//public void signUp(Member member);
	//회원가입
	public void signUp(@Param("mem_username") String mem_username, @Param("mem_pw") String mem_pw, @Param("mem_name") String mem_name, @Param("mem_tel") String mem_tel, @Param("mem_addr") String mem_addr, @Param("role") String role);
	//로그인
	public int loginCheck(@Param("mem_username") String mem_username, @Param("mem_pw") String mem_pw);
	//로그인 한 사람의 모든 정보
	public Member userInfo(@Param("mem_username") String mem_username);
}