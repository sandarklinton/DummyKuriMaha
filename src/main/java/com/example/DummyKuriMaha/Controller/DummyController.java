package com.example.DummyKuriMaha.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.DummyKuriMaha.Model.KurikulumModel;
import com.example.DummyKuriMaha.Model.MahasiswaModel;
import com.example.DummyKuriMaha.Model.ResponseErrorModel;
import com.example.DummyKuriMaha.Model.ResponseModel;
import com.example.DummyKuriMaha.Services.DummyServices;


@RestController
@RequestMapping("/api")
public class DummyController {

	@Autowired
	DummyServices DummyDAO;
	
	@RequestMapping("/getAllMahasiswa")
	public Object getAllMahasiswa (Model model) {
		
		List<MahasiswaModel> mahasiswa= DummyDAO.getAllMahasiswa();
		
		if(mahasiswa.size() != 0) {
			return new ResponseModel("200","success", mahasiswa);
		}else {
			return new ResponseErrorModel("404", "Mahasiswa not found");
		}
   
	}
	
	@RequestMapping("/getAllKurikulum")
	public Object getAllKurikulum (Model model) {
		
		List<KurikulumModel> kurikulum= DummyDAO.getAllKurikulum();
		if(kurikulum.size() != 0) {
			return new ResponseModel("200","success", kurikulum);
		}else {
			return new ResponseErrorModel("404", "Kurikulum not found");
		}


	}
}
