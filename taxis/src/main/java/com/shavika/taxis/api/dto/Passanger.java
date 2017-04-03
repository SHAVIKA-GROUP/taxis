package com.shavika.taxis.api.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "PASSANGER")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Passanger implements Serializable {

	@Id
	// @GeneratedValue
	@Column(name = "ID")
	private long id;

	@Column(name = "FIRST_NAME", columnDefinition = "varchar(100)", nullable = false)
	private String first_name;

	@Column(name = "LAST_NAME", columnDefinition = "varchar(100)", nullable = false)
	private String last_name;

	@Column(name = "GENDER", columnDefinition = "varchar(1)", nullable = false)
	private String gender;

	@Column(name = "ADDRESS_ONE", columnDefinition = "varchar(100)", nullable = false)
	private String address_one;

	@Column(name = "ADDRESS_TWO", columnDefinition = "varchar(100)", nullable = false)
	private String address_two;

	@Column(name = "EMAIL", columnDefinition = "varchar(100)", nullable = false)
	private String email;

	@Column(name = "PHONE_NO", columnDefinition = "varchar(15)", nullable = false)
	private String phone_id;

	@Column(name = "ZIP_CODE", columnDefinition = "int(8) default 0", nullable = false)
	private int zip_name;

	@Column(name = "CITY", columnDefinition = "varchar(35)", nullable = false)
	private String city;

	@Column(name = "STATE", columnDefinition = "varchar(15)", nullable = false)
	private String state;

	@Column(name = "TRAVLEDETAIL_ID", columnDefinition = "bigint(20) default 0", nullable = false)
	private long traveldetail_id;

	@Column(name = "VEHICLE_ID", columnDefinition = "bigint(20) default 0", nullable = false)
	private long vehicle_id;

	@Column(name = "CREATED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long created_on;

	@Column(name = "MODIFIED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long modified_on;

	@Column(name = "IS_DELETED", columnDefinition = "int default 0", nullable = false)
	private int is_deleted;

	public Passanger() {
		super();
	}

	public Passanger(long id, String first_name, String last_name, String gender, String address_one, String address_two,
			String email, String phone_id, int zip_name, String city, String state, long traveldetail_id,
			long vehicle_id, long created_on, long modified_on, int is_deleted) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.gender = gender;
		this.address_one = address_one;
		this.address_two = address_two;
		this.email = email;
		this.phone_id = phone_id;
		this.zip_name = zip_name;
		this.city = city;
		this.state = state;
		this.traveldetail_id = traveldetail_id;
		this.vehicle_id = vehicle_id;
		this.created_on = created_on;
		this.modified_on = modified_on;
		this.is_deleted = is_deleted;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress_one() {
		return address_one;
	}

	public void setAddress_one(String address_one) {
		this.address_one = address_one;
	}

	public String getAddress_two() {
		return address_two;
	}

	public void setAddress_two(String address_two) {
		this.address_two = address_two;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_id() {
		return phone_id;
	}

	public void setPhone_id(String phone_id) {
		this.phone_id = phone_id;
	}

	public int getZip_name() {
		return zip_name;
	}

	public void setZip_name(int zip_name) {
		this.zip_name = zip_name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getTraveldetail_id() {
		return traveldetail_id;
	}

	public void setTraveldetail_id(long traveldetail_id) {
		this.traveldetail_id = traveldetail_id;
	}

	public long getVehicle_id() {
		return vehicle_id;
	}

	public void setVehicle_id(long vehicle_id) {
		this.vehicle_id = vehicle_id;
	}

	public long getCreated_on() {
		return created_on;
	}

	public void setCreated_on(long created_on) {
		this.created_on = created_on;
	}

	public long getModified_on() {
		return modified_on;
	}

	public void setModified_on(long modified_on) {
		this.modified_on = modified_on;
	}

	public int getIs_deleted() {
		return is_deleted;
	}

	public void setIs_deleted(int is_deleted) {
		this.is_deleted = is_deleted;
	}

	@Override
	public String toString() {
		return "Passanger [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", gender=" + gender
				+ ", address_one=" + address_one + ", address_two=" + address_two + ", email=" + email + ", phone_id="
				+ phone_id + ", zip_name=" + zip_name + ", city=" + city + ", state=" + state + ", traveldetail_id="
				+ traveldetail_id + ", vehicle_id=" + vehicle_id + ", created_on=" + created_on + ", modified_on="
				+ modified_on + ", is_deleted=" + is_deleted + "]";
	}

}
