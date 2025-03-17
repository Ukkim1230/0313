package com.web.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.web.common.CommonFactory;
import com.web.dto.CpuDTO;

public class CpuRepository {
	
	public List<CpuDTO> selectCpus(CpuDTO cpu){
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectList("CpuMapper.selectCpus", cpu);
		}
	}
	public CpuDTO selectCpu(int ciNum) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectOne("CpuMapper.selectCpu", ciNum);
		}
	}
	public int insertCpu(CpuDTO cpu) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.insert("CpuMapper.insertCpu", cpu);
		}
	}
	public int updateCpu(CpuDTO cpu) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.update("CpuMapper.updateCpu", cpu);
		}
	}
	public int deleteCpu(int ciNum) {
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.delete("CpuMapper.deleteCpu", ciNum);
		}
	}
	public static void main(String[] args) {
		CpuRepository cpuRepo = new CpuRepository();
//		System.out.println(cpuRepo.selectCpu(1));
		CpuDTO cpu = new CpuDTO();
//		cpu.setCiName("R7-7세대");
//		cpu.setCiPrice(300000);
//		cpu.setCiDesc("최신형");
//		int result = cpuRepo.updateCpu(cpu);
//		int result = cpuRepo.insertCpu(cpu);
		int result = cpuRepo.deleteCpu(1);
		
		System.out.println(result);
		
	}

}
