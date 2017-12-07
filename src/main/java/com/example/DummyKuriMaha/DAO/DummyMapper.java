package com.example.DummyKuriMaha.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.example.DummyKuriMaha.Model.BiodataModel;
import com.example.DummyKuriMaha.Model.BiodataOrtuModel;
import com.example.DummyKuriMaha.Model.IdentitasModel;
import com.example.DummyKuriMaha.Model.KurikulumModel;
import com.example.DummyKuriMaha.Model.MahasiswaModel;
import com.example.DummyKuriMaha.Model.MatkulModel;


@Mapper
public interface DummyMapper {

	@Select("select * from mahasiswa")
	@Results(value= {
			@Result(property="namaLengkap", column="nama_lengkap"),
			@Result(property="tahunMasuk", column="tahun_masuk"),
			@Result(property="kodeKurikulum", column="kode_kurikulum"),
			@Result(property="idUniv", column="id_univ"),
			@Result(property="idFakultas", column="id_fakultas"),
			@Result(property="idProdi", column="id_prodi"),

    })
	List<MahasiswaModel> getAllMahasiswa();

//	@Select("select * from biodata_mahasiswa where id_user_mhs = #{id}")
//	BiodataModel selectBiodata(@Param("id") int id);
//	
//	@Select("select * from biodata_ortu where id_user_mhs = #{id}")
//	BiodataOrtuModel selectBiodataOrtu(@Param("id") int id);
//	
//	@Select("select * from identitas_mahasiswa where id_user_mhs = #{id}")
//	IdentitasModel selectIdentitas(@Param("id") int id);
//	
	
	@Select("select * from kurikulum")
	@Results(value= {
			@Result(property="idKurikulum", column="id"),
			@Result(property="kodeKurikulum", column="kode_kurikulum"),
			@Result(property="namaKurikulum", column="nama_kurikulum"),
			@Result(property="idUniversitas", column="id_universitas"),
			@Result(property="idFakultas", column="id_fakultas"),
			@Result(property="idProdi", column="id_prodi"),
    		@Result(property="listMataKuliah", column="id",javaType = List.class, many=@Many(select="getAllMatakuliah"))
    })
	List<KurikulumModel> getAllKurikulum();

	@Select("select * from mata_kuliah where id = #{id}")
	@Results(value= {
			@Result(property="idMatkul", column="id"),
			@Result(property="kodeMatkul", column="kode_matkul"),
			@Result(property="namaMatkul", column="nama_matkul"),
			@Result(property="jumlahSKS", column="jumlah_sks"),
			@Result(property="idWajib", column="id_wajib"),
			
    })
	List<MatkulModel> getAllMatakuliah(@Param("id") int id);
}
