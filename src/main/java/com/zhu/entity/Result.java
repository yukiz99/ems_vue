package com.zhu.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
public class Result implements Serializable{
	
	private boolean state;
	private String msg;
	private Object data;
	


	public Result() {
		super();
	}
	
	public Result(boolean state, String msg) {
		super();
		this.state = state;
		this.msg = msg;
	}
	public Result(boolean state, String msg, Object data) {
		super();
		this.state = state;
		this.msg = msg;
		this.data = data;
	}



}
