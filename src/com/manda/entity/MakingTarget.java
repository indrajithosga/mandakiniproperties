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
@Table(name="makingtarget")
public class MakingTarget {

	@Id
	@NotNull
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="makingtarget_id",nullable=false)
	private int makingTargetId;
	
		
	@OneToOne
	@JoinColumn(name="pro_id")
	private Projects projects;
	
	@OneToOne
	@JoinColumn(name="rep_id")
	private SalesRep salesRep;
	
	@NotNull
	@Column(name="target_amount",nullable=false)
	private double targetAmount;
	
	@NotNull
	@Column(name="target_date",nullable=false)
	private String makingTargetDate;
	
	@NotNull
	@Column(name="target_remark",nullable=false)
	private String makingTargetRemark;
	
	@NotNull
	@Column(name="target_status",nullable=false)
	private int makingTargetStatus;
	
	@NotNull
	@Column(name="targetcret_date",nullable=false)
	private Date makingTargetCreatingDate;
	
	@NotNull
	@Column(name="targetupdat_date",nullable=false)
	private Date makingTargetUpdateDate;

	public int getMakingTargetId() {
		return makingTargetId;
	}

	public void setMakingTargetId(int makingTargetId) {
		this.makingTargetId = makingTargetId;
	}

	public Projects getProjects() {
		return projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
	}

	public SalesRep getSalesRep() {
		return salesRep;
	}

	public void setSalesRep(SalesRep salesRep) {
		this.salesRep = salesRep;
	}

	public double getTargetAmount() {
		return targetAmount;
	}

	public void setTargetAmount(double targetAmount) {
		this.targetAmount = targetAmount;
	}

	public String getMakingTargetDate() {
		return makingTargetDate;
	}

	public void setMakingTargetDate(String makingTargetDate) {
		this.makingTargetDate = makingTargetDate;
	}

	public String getMakingTargetRemark() {
		return makingTargetRemark;
	}

	public void setMakingTargetRemark(String makingTargetRemark) {
		this.makingTargetRemark = makingTargetRemark;
	}

	public int getMakingTargetStatus() {
		return makingTargetStatus;
	}

	public void setMakingTargetStatus(int makingTargetStatus) {
		this.makingTargetStatus = makingTargetStatus;
	}

	public Date getMakingTargetCreatingDate() {
		return makingTargetCreatingDate;
	}

	public void setMakingTargetCreatingDate(Date makingTargetCreatingDate) {
		this.makingTargetCreatingDate = makingTargetCreatingDate;
	}

	public Date getMakingTargetUpdateDate() {
		return makingTargetUpdateDate;
	}

	public void setMakingTargetUpdateDate(Date makingTargetUpdateDate) {
		this.makingTargetUpdateDate = makingTargetUpdateDate;
	}

	
	
}
