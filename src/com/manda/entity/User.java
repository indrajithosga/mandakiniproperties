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
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	@Column(name="user_id",nullable=false)
	private int userId;
	
	@NotNull
	@Column(name="user_first_name",nullable=false)
	private String userFirstName;
	
	@Column(name="user_last_name")
	private String userLastName;
	
	@NotNull
	@Column(name="user_email",nullable=false)
	private String userEmail;
	
	@Column(name="user_status",nullable=false)
	private int userStatus;
	
	@Column(name="user_image")
	private String userImage;
	
	@NotNull
	@Column(name="user_phonenumber",nullable=false)
	private String userPhoneNumber;
	
	@NotNull
	@Column(name="user_gender",nullable=false)
	private String userGender;
	
	@NotNull
	@Column(name="user_dob",nullable=false)
	private String userDob;
	
	@NotNull
	@Column(name="user_nic",nullable=false)
	private String userNic;
	
	@NotNull
	@Column(name="user_address",nullable=false)
	private String userAddress;
	
	@NotNull
	@Column(name="user_name",nullable=false)
	private String userUname;
	
	@OneToOne
	@JoinColumn(name="role_id")
	private Role role;
	
	@NotNull
	@Column(name="user_joined_date")
	private String userJoinedDate;
	
	@Column(name="user_update_date")
	private Date userUpdatedDate;
	

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}

	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserDob() {
		return userDob;
	}

	public void setUserDob(String userDob) {
		this.userDob = userDob;
	}

	public String getUserNic() {
		return userNic;
	}

	public void setUserNic(String userNic) {
		this.userNic = userNic;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserUname() {
		return userUname;
	}

	public void setUserUname(String userUname) {
		this.userUname = userUname;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUserJoinedDate() {
		return userJoinedDate;
	}

	public void setUserJoinedDate(String userJoinedDate) {
		this.userJoinedDate = userJoinedDate;
	}

	public Date getUserUpdatedDate() {
		return userUpdatedDate;
	}

	public void setUserUpdatedDate(Date userUpdatedDate) {
		this.userUpdatedDate = userUpdatedDate;
	}

	
}
