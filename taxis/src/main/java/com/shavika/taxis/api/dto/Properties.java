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
@Table(name = "PROPERTIES")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Properties implements Serializable {

	private static final long serialVersionUID = 6404959969156876771L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "ID")
	private long id;

	@Column(name = "CURRENCY", columnDefinition = "varchar(30)", nullable = false)
	private String currency;

	@Column(name = "TIME_ZONE", columnDefinition = "varchar(30)", nullable = false)
	private String time_zone;

	@Column(name = "DATE_FORMAT", columnDefinition = "varchar(30)", nullable = false)
	private String date_formet;

	@Column(name = "TIME_FORMAT", columnDefinition = "varchar(30)", nullable = false)
	private String time_format;

	@Column(name = "STD_CODE", columnDefinition = "varchar(30)", nullable = false)
	private String std_code;

	public Properties() {
		super();
	}

	public Properties(long id, String currency, String time_zone, String date_formet, String time_format,
			String std_code) {
		super();
		this.id = id;
		this.currency = currency;
		this.time_zone = time_zone;
		this.date_formet = date_formet;
		this.time_format = time_format;
		this.std_code = std_code;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getTime_zone() {
		return time_zone;
	}

	public void setTime_zone(String time_zone) {
		this.time_zone = time_zone;
	}

	public String getDate_formet() {
		return date_formet;
	}

	public void setDate_formet(String date_formet) {
		this.date_formet = date_formet;
	}

	public String getTime_format() {
		return time_format;
	}

	public void setTime_format(String time_format) {
		this.time_format = time_format;
	}

	public String getStd_code() {
		return std_code;
	}

	public void setStd_code(String std_code) {
		this.std_code = std_code;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Properties [id=" + id + ", currency=" + currency + ", time_zone=" + time_zone + ", date_formet="
				+ date_formet + ", time_format=" + time_format + ", std_code=" + std_code + "]";
	}
}
