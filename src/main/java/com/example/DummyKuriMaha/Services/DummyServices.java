package com.example.DummyKuriMaha.Services;

import java.util.List;

import com.example.DummyKuriMaha.Model.KurikulumModel;
import com.example.DummyKuriMaha.Model.MahasiswaModel;



public interface DummyServices {
	List<MahasiswaModel> getAllMahasiswa();

	List<KurikulumModel> getAllKurikulum();

	KurikulumModel getKurikulumByKode(String kodeKurikulum);
	
}
