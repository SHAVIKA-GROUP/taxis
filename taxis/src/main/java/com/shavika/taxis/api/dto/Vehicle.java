package com.shavika.taxis.api.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "VEHICLE")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Vehicle implements Serializable {

	@Id
	// @GeneratedValue
	@Column(name = "ID")
	private long id;

	@Column(name = "TYPE", columnDefinition = "int default 0", nullable = false)
	private int type;

	@Column(name = "VEHICLE_NO", columnDefinition = "varchar(30)", nullable = false)
	private String vehicle_no;

	@Column(name = "VEHICLE_NAME", columnDefinition = "varchar(50)", nullable = false)
	private String vehicle_name;

	@Column(name = "IMG_NAME", columnDefinition = "varchar(50)", nullable = false)
	private String img_name;

	@Column(name = "PASSANGER_CAPACITY", columnDefinition = "int default 0", nullable = false)
	private int pasanger_capacity;

	@Column(name = "LUGGAGE_CAPACITY", columnDefinition = "int default 0", nullable = false)
	private int luggage_capacity;

	@Column(name = "REGULAR_FARE", nullable = false)
	private double regular_fare;

	@Column(name = "RATING", columnDefinition = "int default 0", nullable = false)
	private int rating;

	@Column(name = "DRIVER_NAME", columnDefinition = "varchar(30)", nullable = false)
	private String driver_name;

	@Column(name = "CONTACT_NO", columnDefinition = "varchar(30) ", nullable = false)
	private String contact_no;

	@Column(name = "AVAILABILITY", columnDefinition = "varchar(30)", nullable = false)
	private String availability;

	@Column(name = "CREATED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long created_on;

	@Column(name = "MODIFIED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long modified_on;

	@Column(name = "IS_DELETED", columnDefinition = "int default 0", nullable = false)
	private int is_deleted;

	public Vehicle() {
		super();
	}

	public Vehicle(long id, int type, String vehicle_no, String vehicle_name, String img_name, int pasanger_capacity,
			int luggage_capacity, double regular_fare, int rating, String driver_name, String contact_no,
			String availability, long created_on, long modified_on, int is_deleted) {
		super();
		this.id = id;
		this.type = type;
		this.vehicle_no = vehicle_no;
		this.vehicle_name = vehicle_name;
		this.img_name = img_name;
		this.pasanger_capacity = pasanger_capacity;
		this.luggage_capacity = luggage_capacity;
		this.regular_fare = regular_fare;
		this.rating = rating;
		this.driver_name = driver_name;
		this.contact_no = contact_no;
		this.availability = availability;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getVehicle_no() {
		return vehicle_no;
	}

	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}

	public String getVehicle_name() {
		return vehicle_name;
	}

	public void setVehicle_name(String vehicle_name) {
		this.vehicle_name = vehicle_name;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public int getPasanger_capacity() {
		return pasanger_capacity;
	}

	public void setPasanger_capacity(int pasanger_capacity) {
		this.pasanger_capacity = pasanger_capacity;
	}

	public int getLuggage_capacity() {
		return luggage_capacity;
	}

	public void setLuggage_capacity(int luggage_capacity) {
		this.luggage_capacity = luggage_capacity;
	}

	public double getRegular_fare() {
		return regular_fare;
	}

	public void setRegular_fare(double regular_fare) {
		this.regular_fare = regular_fare;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getDriver_name() {
		return driver_name;
	}

	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}

	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
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
		return "Vehicle [id=" + id + ", type=" + type + ", vehicle_no=" + vehicle_no + ", vehicle_name=" + vehicle_name
				+ ", img_name=" + img_name + ", pasanger_capacity=" + pasanger_capacity + ", luggage_capacity="
				+ luggage_capacity + ", regular_fare=" + regular_fare + ", rating=" + rating + ", driver_name="
				+ driver_name + ", contact_no=" + contact_no + ", availability=" + availability + ", created_on="
				+ created_on + ", modified_on=" + modified_on + ", is_deleted=" + is_deleted + "]";
	}

}
