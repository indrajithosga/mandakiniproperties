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
@Table(name="projects")
public class Projects {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="pro_id")
	private int proId;
	
	@NotNull
	@Column(name="pro_name",nullable=false)
	private String proName;
	
	@NotNull
	@Column(name="pro_location",nullable=false)
	private String proLocation;
	
	@NotNull
	@Column(name="pro_area",nullable=false)
	private String proArea;
	
	@NotNull
	@Column(name="start_date",nullable=false)
	private String proStartedDate;
	
	@NotNull
	@Column(name="total_purchases",nullable=false)
	private double TotalPurchases;
	
	@NotNull
	@Column(name="cost_purchase",nullable=false)
	private double CostOfpurchase;
	
	@NotNull
	@Column(name="total_plots",nullable=false)
	private double totalPlots;
	
	@Column(name="pro_image",nullable=false)
	private String proImage;
	
	@Column(name="remark",nullable=false)
	private String proRemark;
	
	@Column(name="pro_created_date",nullable=false)
	private Date proCreatedDate;
	
	@Column(name="pro_updated_date",nullable=false)
	private Date proUpdatedDate;
	
	@Column(name="pro_status",nullable=false)
	private int proStatus;
	
	@OneToOne
	@JoinColumn(name="cat_id")
	private ProjectCategories projectCategories;
	
	@OneToOne
	@JoinColumn(name="rep_id")
	private SalesRep salesRep;

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProLocation() {
		return proLocation;
	}

	public void setProLocation(String proLocation) {
		this.proLocation = proLocation;
	}

	public String getProArea() {
		return proArea;
	}

	public void setProArea(String proArea) {
		this.proArea = proArea;
	}

	public String getProStartedDate() {
		return proStartedDate;
	}

	public void setProStartedDate(String proStartedDate) {
		this.proStartedDate = proStartedDate;
	}

	public double getTotalPurchases() {
		return TotalPurchases;
	}

	public void setTotalPurchases(double totalPurchases) {
		TotalPurchases = totalPurchases;
	}

	public double getCostOfpurchase() {
		return CostOfpurchase;
	}

	public void setCostOfpurchase(double costOfpurchase) {
		CostOfpurchase = costOfpurchase;
	}

	public double getTotalPlots() {
		return totalPlots;
	}

	public void setTotalPlots(double totalPlots) {
		this.totalPlots = totalPlots;
	}

	public String getProImage() {
		return proImage;
	}

	public void setProImage(String proImage) {
		this.proImage = proImage;
	}

	public String getProRemark() {
		return proRemark;
	}

	public void setProRemark(String proRemark) {
		this.proRemark = proRemark;
	}

	public Date getProCreatedDate() {
		return proCreatedDate;
	}

	public void setProCreatedDate(Date proCreatedDate) {
		this.proCreatedDate = proCreatedDate;
	}

	public Date getProUpdatedDate() {
		return proUpdatedDate;
	}

	public void setProUpdatedDate(Date proUpdatedDate) {
		this.proUpdatedDate = proUpdatedDate;
	}

	public int getProStatus() {
		return proStatus;
	}

	public void setProStatus(int proStatus) {
		this.proStatus = proStatus;
	}

	public ProjectCategories getProjectCategories() {
		return projectCategories;
	}

	public void setProjectCategories(ProjectCategories projectCategories) {
		this.projectCategories = projectCategories;
	}

	public SalesRep getSalesRep() {
		return salesRep;
	}

	public void setSalesRep(SalesRep salesRep) {
		this.salesRep = salesRep;
	}

	
}
