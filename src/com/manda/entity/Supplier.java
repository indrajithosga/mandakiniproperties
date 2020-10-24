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
@Table(name="supplier")
public class Supplier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="supplier_id",nullable = false)
	private int supId;

	@NotNull
	@Column(name="sup_name",nullable = false)
	private String supName;
	
	@Column(name="sup_address")
	private String supAddress;
	
	@NotNull
	@Column(name="sup_email",nullable = false)
	private String supEmail;
	
	@NotNull
	@Column(name="sup_office_number",nullable = false)
	private String supOfficenumber;
	
	@NotNull
	@Column(name="sup_mobile_number",nullable = false)
	private String supMobilenumber;
	
	@Column(name="sup_status",nullable=false)
	private int supStatus; 
		
	@Column(name="sup_remark")
	private String supRemark;
	
	@NotNull
	@Column(name="sup_created_date")
	private String supCreatedDate;
	
	@Column(name="sup_updated_date")
	private Date supUpdatedDate;

	public int getSupId() {
		return supId;
	}

	public void setSupId(int supId) {
		this.supId = supId;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
	}

	public String getSupAddress() {
		return supAddress;
	}

	public void setSupAddress(String supAddress) {
		this.supAddress = supAddress;
	}

	public String getSupEmail() {
		return supEmail;
	}

	public void setSupEmail(String supEmail) {
		this.supEmail = supEmail;
	}

	public String getSupOfficenumber() {
		return supOfficenumber;
	}

	public void setSupOfficenumber(String supOfficenumber) {
		this.supOfficenumber = supOfficenumber;
	}

	public String getSupMobilenumber() {
		return supMobilenumber;
	}

	public void setSupMobilenumber(String supMobilenumber) {
		this.supMobilenumber = supMobilenumber;
	}

	public int getSupStatus() {
		return supStatus;
	}

	public void setSupStatus(int supStatus) {
		this.supStatus = supStatus;
	}

	public String getSupRemark() {
		return supRemark;
	}

	public void setSupRemark(String supRemark) {
		this.supRemark = supRemark;
	}

	public String getSupCreatedDate() {
		return supCreatedDate;
	}

	public void setSupCreatedDate(String supCreatedDate) {
		this.supCreatedDate = supCreatedDate;
	}

	public Date getSupUpdatedDate() {
		return supUpdatedDate;
	}

	public void setSupUpdatedDate(Date supUpdatedDate) {
		this.supUpdatedDate = supUpdatedDate;
	}

	
	
}
