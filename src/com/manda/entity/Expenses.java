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
@Table(name="expenses")
public class Expenses {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="exp_id",nullable=false)
	private int expId;
	
	@NotNull
	@Column(name="exp_name",nullable=false)
	private String expName;
	
	@Column(name="exp_created_date",nullable=false)
	private Date expCreatedDate;
	
	@Column(name="exp_updated_date",nullable=false)
	private Date expUpdatedDate;
	
	@Column(name="exp_status",nullable=false)
	private int expStatus;
	
	@Column(name="exp_remark",nullable=false)
	private String expRemark;

	public int getExpId() {
		return expId;
	}

	public void setExpId(int expId) {
		this.expId = expId;
	}

	public String getExpName() {
		return expName;
	}

	public void setExpName(String expName) {
		this.expName = expName;
	}

	public Date getExpCreatedDate() {
		return expCreatedDate;
	}

	public void setExpCreatedDate(Date expCreatedDate) {
		this.expCreatedDate = expCreatedDate;
	}

	public Date getExpUpdatedDate() {
		return expUpdatedDate;
	}

	public void setExpUpdatedDate(Date expUpdatedDate) {
		this.expUpdatedDate = expUpdatedDate;
	}

	public int getExpStatus() {
		return expStatus;
	}

	public void setExpStatus(int expStatus) {
		this.expStatus = expStatus;
	}

	public String getExpRemark() {
		return expRemark;
	}

	public void setExpRemark(String expRemark) {
		this.expRemark = expRemark;
	}
	
	
}
