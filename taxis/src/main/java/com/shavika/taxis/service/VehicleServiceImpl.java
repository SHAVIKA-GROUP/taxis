package com.shavika.taxis.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.dto.VehicleSync;
import com.shavika.taxis.api.exception.ShavikaAppException;
import com.shavika.taxis.dao.VehicleDao;

@Service("vehicleService")
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	private VehicleDao vehicleDao;

	@Transactional(readOnly = true)
	@Override
	public VehicleSync getAllVehicleSync() throws com.shavika.taxis.api.exception.ShavikaAppException {
		VehicleSync vehicleSync = new VehicleSync();
		List<Vehicle> vehicleList = vehicleDao.getAllVehicle();
		for (Vehicle vehicle : vehicleList) {
			if (vehicle.getType() == 1) {
				List<Vehicle> v1 = (null == vehicleSync.getHatchBackVehicle()) ? new ArrayList<Vehicle>()
						: vehicleSync.getHatchBackVehicle();
				v1.add(vehicle);
				vehicleSync.setHatchBackVehicle(v1);
			} else if (vehicle.getType() == 2) {
				List<Vehicle> v2 = (null == vehicleSync.getSedanVehicle()) ? new ArrayList<Vehicle>()
						: vehicleSync.getSedanVehicle();
				v2.add(vehicle);
				vehicleSync.setSedanVehicle(v2);
			} else if (vehicle.getType() == 3) {
				List<Vehicle> v3 = (null == vehicleSync.getSuvVehicle()) ? new ArrayList<Vehicle>()
						: vehicleSync.getSuvVehicle();
				v3.add(vehicle);
				vehicleSync.setSuvVehicle(v3);
			}
		}
		return vehicleSync;
	}

	@Override
	public List<Vehicle> getAllVehicle() throws ShavikaAppException {
		return vehicleDao.getAllVehicle();
	}
}
