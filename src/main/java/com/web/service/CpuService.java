package com.web.service;

import java.util.List;

import com.web.dto.CpuDTO;
import com.web.repository.CpuRepository;

public class CpuService {
	private CpuRepository cpuRepo = new CpuRepository();
	
	public List<CpuDTO> selectCpus(CpuDTO cpu){
		return cpuRepo.selectCpus(cpu);
	}
	public CpuDTO selectCpu(int ciNum) {
		return cpuRepo.selectCpu(ciNum);
	}
	public int insertCpu(CpuDTO cpu) {
		return cpuRepo.insertCpu(cpu);
	}
	public int updateCpu(CpuDTO cpu) {
		return cpuRepo.updateCpu(cpu);
	}
	public int deleteCpu(int ciNum) {
		return cpuRepo.deleteCpu(ciNum);
	}

}
