package com.example.DummyKuriMaha.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.DummyKuriMaha.DAO.DummyMapper;
import com.example.DummyKuriMaha.Model.KurikulumModel;
import com.example.DummyKuriMaha.Model.MahasiswaModel;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DummyServicesDatabase implements DummyServices{

	@Autowired
    private DummyMapper dummyMapper;
	
	@Override
	public List<MahasiswaModel> getAllMahasiswa() {
		List<MahasiswaModel> listing = dummyMapper.getAllMahasiswa();
		return listing;
	}
	
	@Override
	public List<KurikulumModel> getAllKurikulum() {
		List<KurikulumModel> listing = dummyMapper.getAllKurikulum();
		return listing;
	}

}
