package com.web.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.web.common.CommonFactory;
import com.web.dto.FoodDTO;

public class FoodRepository {
	

	public List<FoodDTO> selectFoods(Map<String, String> param){
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectList("FoodMapper.selectFoods", param);
		}
	}
	public FoodDTO selectFood(int fiNum){
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectOne("FoodMapper.selectFood", fiNum);
		}
	}
	public int insertFood(FoodDTO food) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.insert("FoodMapper.insertFood", food);
		}
	}
	public int updateFood(FoodDTO food) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.update("FoodMapper.updateFood", food);
		}
	}
	public int deleteFood(int fiNum) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.delete("FoodMapper.deleteFood", fiNum);
		}
	}
}