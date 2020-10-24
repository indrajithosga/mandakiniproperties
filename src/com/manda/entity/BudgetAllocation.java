package com.manda.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name="budget_allocation")
public class BudgetAllocation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="budget_Id",nullable=false)
	private int budgetId;
	
	@NotNull
	@Column(name="budget_name",nullable=false)
	private String budgetName;
	
	@NotNull
	@Column(name="budget_date",nullable=false)
	private String budgetDate;
	
	@NotNull
	@Column(name="budget_aloc_amount",nullable=false)
	private double budgetAlocAmount;
	
	@Column(name="budget_remark",nullable=false)
	private String budgetRemark;
	
	@Column(name="budget_created_date",nullable=false)
	private Date budgetCreatedDate;
	
	@Column(name="budget_updated_date",nullable=false)
	private Date budgetUpdatedDate;
	
	@OneToOne
	@JoinColumn(name="pro_id")
	private Projects projects;
	
	@OneToMany
	@JoinColumn(name="budalloca_item_id")
	private List<BudgetAllocationItem> BudgetAllocationItem;

	public int getBudgetId() {
		return budgetId;
	}

	public void setBudgetId(int budgetId) {
		this.budgetId = budgetId;
	}

	public String getBudgetName() {
		return budgetName;
	}

	public void setBudgetName(String budgetName) {
		this.budgetName = budgetName;
	}

	public String getBudgetDate() {
		return budgetDate;
	}

	public void setBudgetDate(String budgetDate) {
		this.budgetDate = budgetDate;
	}

	public double getBudgetAlocAmount() {
		return budgetAlocAmount;
	}

	public void setBudgetAlocAmount(double budgetAlocAmount) {
		this.budgetAlocAmount = budgetAlocAmount;
	}

	public String getBudgetRemark() {
		return budgetRemark;
	}

	public void setBudgetRemark(String budgetRemark) {
		this.budgetRemark = budgetRemark;
	}

	public Date getBudgetCreatedDate() {
		return budgetCreatedDate;
	}

	public void setBudgetCreatedDate(Date budgetCreatedDate) {
		this.budgetCreatedDate = budgetCreatedDate;
	}

	public Date getBudgetUpdatedDate() {
		return budgetUpdatedDate;
	}

	public void setBudgetUpdatedDate(Date budgetUpdatedDate) {
		this.budgetUpdatedDate = budgetUpdatedDate;
	}

	public Projects getProjects() {
		return projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
	}

	public List<BudgetAllocationItem> getBudgetAllocationItem() {
		return BudgetAllocationItem;
	}

	public void setBudgetAllocationItem(
			List<BudgetAllocationItem> budgetAllocationItem) {
		BudgetAllocationItem = budgetAllocationItem;
	}

	
}
