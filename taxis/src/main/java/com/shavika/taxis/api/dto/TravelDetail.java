package com.shavika.taxis.api.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "TRAVEL_DETAIL")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class TravelDetail implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "ID")
	private long id;

	@Column(name = "SOURCE", columnDefinition = "varchar(500)", nullable = false)
	private String source;

	@Column(name = "DESIGNATION", columnDefinition = "varchar(500)", nullable = false)
	private String designation;

	@Column(name = "TRAVEL_DATETIME", columnDefinition = "bigint(20) default 0", nullable = false)
	private long travel_datetime;

	@Column(name = "NO_PASSANGER", columnDefinition = "int default 0", nullable = false)
	private int no_passanger;

	@Column(name = "NO_LUGGAGE", columnDefinition = "int default 0", nullable = false)
	private int no_luggage;

	@Column(name = "TRAVEL_DISTANCE",  nullable = false)
	private double travel_distance;

	@Column(name = "TRAVEL_DURATION", nullable = false)
	private double travel_duration;

	@Column(name = "PASSANGER_ID", columnDefinition = "bigint(20) default 0", nullable = false)
	private long passanger_id;

	@Column(name = "VEHICLE_ID", columnDefinition = "bigint(20) default 0", nullable = false)
	private long vehicle_id;

	@Column(name = "TRAVEL_FARE", nullable = false)
	private double travel_fare;

	@Column(name = "STATUS", columnDefinition = "varchar(10)", nullable = false)
	private String status;

	@Column(name = "CREATED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long created_on;

	@Column(name = "MODIFIED_ON", columnDefinition = "bigint(20) default 0", nullable = false)
	private long modified_on;

	@Column(name = "IS_DELETED", columnDefinition = "int default 0", nullable = false)
	private int is_deleted;

	public TravelDetail() {
		super();
	}

	public TravelDetail(long id, String source, String designation, long travel_datetime, int no_passanger,
			int no_luggage, double travel_distance, double travel_duration, long passanger_id, long vehicle_id,
			double travel_fare, String status, long created_on, long modified_on, int is_deleted) {
		super();
		this.id = id;
		this.source = source;
		this.designation = designation;
		this.travel_datetime = travel_datetime;
		this.no_passanger = no_passanger;
		this.no_luggage = no_luggage;
		this.travel_distance = travel_distance;
		this.travel_duration = travel_duration;
		this.passanger_id = passanger_id;
		this.vehicle_id = vehicle_id;
		this.travel_fare = travel_fare;
		this.status = status;
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

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public long getTravel_datetime() {
		return travel_datetime;
	}

	public void setTravel_datetime(long travel_datetime) {
		this.travel_datetime = travel_datetime;
	}

	public int getNo_passanger() {
		return no_passanger;
	}

	public void setNo_passanger(int no_passanger) {
		this.no_passanger = no_passanger;
	}

	public int getNo_luggage() {
		return no_luggage;
	}

	public void setNo_luggage(int no_luggage) {
		this.no_luggage = no_luggage;
	}

	public double getTravel_distance() {
		return travel_distance;
	}

	public void setTravel_distance(double travel_distance) {
		this.travel_distance = travel_distance;
	}

	public double getTravel_duration() {
		return travel_duration;
	}

	public void setTravel_duration(double travel_duration) {
		this.travel_duration = travel_duration;
	}

	public long getPassanger_id() {
		return passanger_id;
	}

	public void setPassanger_id(long passanger_id) {
		this.passanger_id = passanger_id;
	}

	public long getVehicle_id() {
		return vehicle_id;
	}

	public void setVehicle_id(long vehicle_id) {
		this.vehicle_id = vehicle_id;
	}

	public double getTravel_fare() {
		return travel_fare;
	}

	public void setTravel_fare(double travel_fare) {
		this.travel_fare = travel_fare;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
		return "TravelDetail [id=" + id + ", source=" + source + ", designation=" + designation + ", travel_datetime="
				+ travel_datetime + ", no_passanger=" + no_passanger + ", no_luggage=" + no_luggage
				+ ", travel_distance=" + travel_distance + ", travel_duration=" + travel_duration + ", passanger_id="
				+ passanger_id + ", vehicle_id=" + vehicle_id + ", travel_fare=" + travel_fare + ", status=" + status
				+ ", created_on=" + created_on + ", modified_on=" + modified_on + ", is_deleted=" + is_deleted + "]";
	}
}
