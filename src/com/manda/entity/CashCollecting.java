package com.manda.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name="cashcollecting")
public class CashCollecting {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="cashcollecting_id",nullable=false)
	private int cashCollectId;
	
	@OneToOne
	@JoinColumn(name="pro_id",nullable=false)
	private Projects projects;
	
	@NotNull
	@Column(name="cashcollect_date",nullable=false)
	private String cashCollectDate;
	
	@NotNull
	@Column(name="cashCollect_amount",nullable=false)
	private double cashCollectAmount;
	
	@OneToOne
	@JoinColumn(name="rep_id",nullable=false)
	private SalesRep salesRep;
	
	@Column(name="cashCollect_remark")
	private String cashCollectRemark;
	
	@NotNull
	@Column(name="cashCollect_status",nullable=false)
	private int cashCollectStatus;
	
	@NotNull
	@Column(name="cashCollectcret_date",nullable=false)
	private Date cashCollectCretingDate;
	
	@NotNull
	@Column(name="cashCollectupdat_date",nullable=false)
	private Date cashCollectUpdateDate;

	public int getCashCollectId() {
		return cashCollectId;
	}

	public void setCashCollectId(int cashCollectId) {
		this.cashCollectId = cashCollectId;
	}

	public Projects getProjects() {
		return projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
	}

	public String getCashCollectDate() {
		return cashCollectDate;
	}

	public void setCashCollectDate(String cashCollectDate) {
		this.cashCollectDate = cashCollectDate;
	}

	public double getCashCollectAmount() {
		return cashCollectAmount;
	}

	public void setCashCollectAmount(double cashCollectAmount) {
		this.cashCollectAmount = cashCollectAmount;
	}

	public SalesRep getSalesRep() {
		return salesRep;
	}

	public void setSalesRep(SalesRep salesRep) {
		this.salesRep = salesRep;
	}

	public String getCashCollectRemark() {
		return cashCollectRemark;
	}

	public void setCashCollectRemark(String cashCollectRemark) {
		this.cashCollectRemark = cashCollectRemark;
	}

	public int getCashCollectStatus() {
		return cashCollectStatus;
	}

	public void setCashCollectStatus(int cashCollectStatus) {
		this.cashCollectStatus = cashCollectStatus;
	}

	public Date getCashCollectCretingDate() {
		return cashCollectCretingDate;
	}

	public void setCashCollectCretingDate(Date cashCollectCretingDate) {
		this.cashCollectCretingDate = cashCollectCretingDate;
	}

	public Date getCashCollectUpdateDate() {
		return cashCollectUpdateDate;
	}

	public void setCashCollectUpdateDate(Date cashCollectUpdateDate) {
		this.cashCollectUpdateDate = cashCollectUpdateDate;
	}

	
	
}
