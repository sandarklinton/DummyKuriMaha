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
import com.example.DummyKuriMaha.Services.DummyServices;


@RestController
@RequestMapping("/api")
public class DummyController {

	@Autowired
	DummyServices DummyDAO;
	
	@RequestMapping("/getAllMahasiswa")
	public List<MahasiswaModel> getAllMahasiswa (Model model) {
		
		List<MahasiswaModel> mahasiswa= DummyDAO.getAllMahasiswa();
        model.addAttribute ("mahasiswa", mahasiswa);

        return mahasiswa;
	}
	
	@RequestMapping("/getAllKurikulum")
	public List<KurikulumModel> getAllKurikulum (Model model) {
		
		List<KurikulumModel> kurikulum= DummyDAO.getAllKurikulum();
        model.addAttribute ("kurikulum", kurikulum);

        return kurikulum;
	}
}
