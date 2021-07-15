package com.bankdetails.bank.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Bank implements Serializable{

	private static final long serialVersionUID = 1L; 
	
	@Id
	private int id;
	
	@NotEmpty
	@Pattern(regexp="^[A-Za-z]+$",message="Characters Only")
	private String bank_name;
	 
	@NotEmpty
	private String branch_name;
	
	
	@NotEmpty
	@Pattern(regexp="^[A-Za-z]{4}[0-9]{7}",message="IFSC code should be 11 digits")
	private String ifsc_code;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getIfsc_code() {
		return ifsc_code;
	}
	public void setIfsc_code(String ifsc_code) {
		this.ifsc_code = ifsc_code;
	}

	
	
}
