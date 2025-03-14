package com.web.service;

import java.util.List;
import java.util.Map;

import com.web.dto.FoodDTO;
import com.web.repository.FoodRepository;

public class FoodService {
	private FoodRepository foodRepo = new FoodRepository();
	
	public List<FoodDTO> selectFoods(Map<String, String> param){
		return foodRepo.selectFoods(param);
	}
	public FoodDTO selectFood(int fiNum) {
		return foodRepo.selectFood(fiNum);
	}
	public int insertFood(FoodDTO food) {
		return foodRepo.insertFood(food);
	}
	public int updateFood(FoodDTO food) {
		return foodRepo.updateFood(food);
	}
	public int deleteFood(int fiNum) {
		return foodRepo.deleteFood(fiNum);
	}
}
