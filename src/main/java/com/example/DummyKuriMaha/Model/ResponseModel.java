package com.example.DummyKuriMaha.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseModel {
	private String status;
	private String msg;
	private Object result;
}
