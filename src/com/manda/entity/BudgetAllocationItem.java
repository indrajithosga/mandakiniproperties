package com.manda.entity;

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
@Table(name="budgetallocation_item")
public class BudgetAllocationItem {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@NotNull
	@Column(name="budalloca_item_id")
	private int budgetAllocationItemId;
	
	@NotNull
	@Column(name="budalloca_item_amount")
	private double budgetAllocationItemAmount;
	
	@OneToOne
	@JoinColumn(name="budgetallocation_id",nullable=false)
	private BudgetAllocation budgetAllocation;
	
	@OneToOne
	@JoinColumn(name="exp_id",nullable=false)
	private Expenses expenses;
	
	
	public int getBudgetAllocationItemId() {
		return budgetAllocationItemId;
	}

	public void setBudgetAllocationItemId(int budgetAllocationItemId) {
		this.budgetAllocationItemId = budgetAllocationItemId;
	}

	public BudgetAllocation getBudgetAllocation() {
		return budgetAllocation;
	}

	public void setBudgetAllocation(BudgetAllocation budgetAllocation) {
		this.budgetAllocation = budgetAllocation;
	}

	public Expenses getExpenses() {
		return expenses;
	}

	public void setExpenses(Expenses expenses) {
		this.expenses = expenses;
	}

	public double getBudgetAllocationItemAmount() {
		return budgetAllocationItemAmount;
	}

	public void setBudgetAllocationItemAmount(double budgetAllocationItemAmount) {
		this.budgetAllocationItemAmount = budgetAllocationItemAmount;
	}
	
}
