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
@Table(name="expenses_alocation")
public class ExpensesAllocation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="expensesalocation_id",nullable=false)
	private int expAlocationId;
	
	@NotNull
	@Column(name="expAlocation_date",nullable=false)
	private String expAlocationDate;
	
	@NotNull
	@Column(name="expAlocation_amount",nullable=false)
	private double expAlocationAmount;
	
	@NotNull
	@Column(name="expAlocation_reman_balance",nullable=false)
	private double expAlocationRemainBalance;
	
	@NotNull
	@Column(name="expAlocation_remark",nullable=false)
	private String expAlocationRemark;
	
	@OneToOne
	@JoinColumn(name="exp_id")
	private Expenses expenses;
	
	@OneToOne
	@JoinColumn(name="pro_id")
	private Projects projects;
	
	@OneToOne
	@JoinColumn(name="user_id")
	private User user;

	public int getExpAlocationId() {
		return expAlocationId;
	}

	public void setExpAlocationId(int expAlocationId) {
		this.expAlocationId = expAlocationId;
	}

	public String getExpAlocationDate() {
		return expAlocationDate;
	}

	public void setExpAlocationDate(String expAlocationDate) {
		this.expAlocationDate = expAlocationDate;
	}

	public double getExpAlocationAmount() {
		return expAlocationAmount;
	}

	public void setExpAlocationAmount(double expAlocationAmount) {
		this.expAlocationAmount = expAlocationAmount;
	}

	public double getExpAlocationRemainBalance() {
		return expAlocationRemainBalance;
	}

	public void setExpAlocationRemainBalance(double expAlocationRemainBalance) {
		this.expAlocationRemainBalance = expAlocationRemainBalance;
	}

	public String getExpAlocationRemark() {
		return expAlocationRemark;
	}

	public void setExpAlocationRemark(String expAlocationRemark) {
		this.expAlocationRemark = expAlocationRemark;
	}

	public Expenses getExpenses() {
		return expenses;
	}

	public void setExpenses(Expenses expenses) {
		this.expenses = expenses;
	}

	public Projects getProjects() {
		return projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
}
