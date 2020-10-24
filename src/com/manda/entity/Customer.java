package com.manda.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name="customers")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name = "customer_id",nullable = false)
	private int cusId;
	
	@NotNull
	@Column(name = "cus_first_name",nullable = false)
	private String cusFirstName;
	
	@NotNull
	@Column(name = "cus_last_name",nullable = false)
	private String cusLastName;
	
	@NotNull
	@Column(name = "cus_nic",nullable = false)
	private String cusNic;
	
	@NotNull
	@Column(name = "cus_age",nullable=false)
	private int cusAge;
	
	@NotNull
	@Column(name = "cus_dob",nullable = false)
	private String cusDob;
	
	@Column(name = "cus_status",nullable = false)
	private int cusStatus;
	
	@NotNull
	@Column(name = "cus_email",nullable = false)
	private String cusEmail;
	
	@NotNull
	@Column(name = "cus_address",nullable = false)
	private String cusAddress;
	
	@NotNull
	@Column(name = "cus_contact_number",nullable = false)
	private String cusContactNumber;
	
	@Column(name = "cus_remark")
	private String cusRemark;
	
	@NotNull
	@Column(name = "cus_created_date")
	private String cusCreatedDate;
	
	@Column(name = "cus_updated_date")
	private Date cusUpdatedDate;

	public int getCusId() {
		return cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

	public String getCusFirstName() {
		return cusFirstName;
	}

	public void setCusFirstName(String cusFirstName) {
		this.cusFirstName = cusFirstName;
	}

	public String getCusLastName() {
		return cusLastName;
	}

	public void setCusLastName(String cusLastName) {
		this.cusLastName = cusLastName;
	}

	public String getCusNic() {
		return cusNic;
	}

	public void setCusNic(String cusNic) {
		this.cusNic = cusNic;
	}

	public int getCusAge() {
		return cusAge;
	}

	public void setCusAge(int cusAge) {
		this.cusAge = cusAge;
	}

	public String getCusDob() {
		return cusDob;
	}

	public void setCusDob(String cusDob) {
		this.cusDob = cusDob;
	}

	public int getCusStatus() {
		return cusStatus;
	}

	public void setCusStatus(int cusStatus) {
		this.cusStatus = cusStatus;
	}

	public String getCusEmail() {
		return cusEmail;
	}

	public void setCusEmail(String cusEmail) {
		this.cusEmail = cusEmail;
	}

	public String getCusAddress() {
		return cusAddress;
	}

	public void setCusAddress(String cusAddress) {
		this.cusAddress = cusAddress;
	}

	public String getCusContactNumber() {
		return cusContactNumber;
	}

	public void setCusContactNumber(String cusContactNumber) {
		this.cusContactNumber = cusContactNumber;
	}

	public String getCusRemark() {
		return cusRemark;
	}

	public void setCusRemark(String cusRemark) {
		this.cusRemark = cusRemark;
	}

	public String getCusCreatedDate() {
		return cusCreatedDate;
	}

	public void setCusCreatedDate(String cusCreatedDate) {
		this.cusCreatedDate = cusCreatedDate;
	}

	public Date getCusUpdatedDate() {
		return cusUpdatedDate;
	}

	public void setCusUpdatedDate(Date cusUpdatedDate) {
		this.cusUpdatedDate = cusUpdatedDate;
	}

		
}
