package com.student.models;

import javax.validation.constraints.NotEmpty;

public class Login {
	@NotEmpty(message="Please, enter username")
	private String username;
	@NotEmpty(message="Please, enter password")
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
