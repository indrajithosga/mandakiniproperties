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
@Table(name="salesrep")
public class SalesRep {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="rep_id",nullable=false)
	private int repId;
	
	@NotNull
	@Column(name="rep_first_name",nullable=false)
	private String repFirstName;
	
	@Column(name="rep_last_name",nullable=false)
	private String repLastName;
	
	@NotNull
	@Column(name="rep_nic",nullable=false)
	private String repNic;
	
	@NotNull
	@Column(name="rep_mobile_number",nullable=false)
	private String repMobileNumber;
	
	@NotNull
	@Column(name="rep_email",nullable=false)
	private String repEmail;
	
	@Column(name="rep_address",nullable=false)
	private String repAddress;
	
	@Column(name="rep_remark",nullable=false)
	private String repRemark;
	
	@Column(name="rep_status",nullable=false)
	private int repStatus;
	
	@NotNull
	@Column(name="rep_created_date",nullable=false)
	private String repCreatedDate;
	
	@Column(name="rep_updated_date",nullable=false)
	private Date repUpdatedDate;

	public int getRepId() {
		return repId;
	}

	public void setRepId(int repId) {
		this.repId = repId;
	}

	public String getRepFirstName() {
		return repFirstName;
	}

	public void setRepFirstName(String repFirstName) {
		this.repFirstName = repFirstName;
	}

	public String getRepLastName() {
		return repLastName;
	}

	public void setRepLastName(String repLastName) {
		this.repLastName = repLastName;
	}

	public String getRepNic() {
		return repNic;
	}

	public void setRepNic(String repNic) {
		this.repNic = repNic;
	}

	public String getRepMobileNumber() {
		return repMobileNumber;
	}

	public void setRepMobileNumber(String repMobileNumber) {
		this.repMobileNumber = repMobileNumber;
	}

	public String getRepEmail() {
		return repEmail;
	}

	public void setRepEmail(String repEmail) {
		this.repEmail = repEmail;
	}

	public String getRepAddress() {
		return repAddress;
	}

	public void setRepAddress(String repAddress) {
		this.repAddress = repAddress;
	}

	public String getRepRemark() {
		return repRemark;
	}

	public void setRepRemark(String repRemark) {
		this.repRemark = repRemark;
	}

	public int getRepStatus() {
		return repStatus;
	}

	public void setRepStatus(int repStatus) {
		this.repStatus = repStatus;
	}

	public String getRepCreatedDate() {
		return repCreatedDate;
	}

	public void setRepCreatedDate(String repCreatedDate) {
		this.repCreatedDate = repCreatedDate;
	}

	public Date getRepUpdatedDate() {
		return repUpdatedDate;
	}

	public void setRepUpdatedDate(Date repUpdatedDate) {
		this.repUpdatedDate = repUpdatedDate;
	}

	
		
}
