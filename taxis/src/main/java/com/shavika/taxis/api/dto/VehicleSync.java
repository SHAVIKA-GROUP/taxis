package com.shavika.taxis.api.dto;

import java.util.List;

public class VehicleSync {

	private List<Vehicle> hatchBackVehicle;

	private List<Vehicle> sedanVehicle;

	private List<Vehicle> suvVehicle;

	public VehicleSync() {
		super();
	}

	public VehicleSync(List<Vehicle> hatchBackVehicle, List<Vehicle> sedanVehicle, List<Vehicle> suvVehicle) {
		super();
		this.hatchBackVehicle = hatchBackVehicle;
		this.sedanVehicle = sedanVehicle;
		this.suvVehicle = suvVehicle;
	}

	public List<Vehicle> getHatchBackVehicle() {
		return hatchBackVehicle;
	}

	public void setHatchBackVehicle(List<Vehicle> hatchBackVehicle) {
		this.hatchBackVehicle = hatchBackVehicle;
	}

	public List<Vehicle> getSedanVehicle() {
		return sedanVehicle;
	}

	public void setSedanVehicle(List<Vehicle> sedanVehicle) {
		this.sedanVehicle = sedanVehicle;
	}

	public List<Vehicle> getSuvVehicle() {
		return suvVehicle;
	}

	public void setSuvVehicle(List<Vehicle> suvVehicle) {
		this.suvVehicle = suvVehicle;
	}

	@Override
	public String toString() {
		return "VehicleSync [hatchBackVehicle=" + hatchBackVehicle + ", sedanVehicle=" + sedanVehicle + ", suvVehicle="
				+ suvVehicle + "]";
	}
}
