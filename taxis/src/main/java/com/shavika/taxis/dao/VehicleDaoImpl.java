package com.shavika.taxis.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.shavika.taxis.api.dao.BaseDaoImpl;
import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.exception.ShavikaAppException;


@Repository("vehicleDao")
public class VehicleDaoImpl extends BaseDaoImpl<Vehicle> implements VehicleDao {

	@Override
	public List<Vehicle> getAllVehicle() throws ShavikaAppException {
		return findAll(Vehicle.class);
	}
}