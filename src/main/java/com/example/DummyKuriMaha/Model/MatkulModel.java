package com.example.DummyKuriMaha.Model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MatkulModel
{
	private String idMatkul;
	private String kodeMatkul;
	private String namaMatkul;
    private int jumlahSKS;
    private String idKurikulum;
    private String deskripsi;
    private List<MatkulModel> prasyarat;
    private String term;
	private boolean idWajib;
    
    
  

}