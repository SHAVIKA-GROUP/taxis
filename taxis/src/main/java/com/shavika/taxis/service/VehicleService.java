package com.shavika.taxis.service;

import java.util.List;

import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.dto.VehicleSync;
import com.shavika.taxis.api.exception.ShavikaAppException;

public abstract interface VehicleService {

	public abstract VehicleSync getAllVehicleSync() throws ShavikaAppException;
	
	public abstract List<Vehicle> getAllVehicle() throws ShavikaAppException;

}
