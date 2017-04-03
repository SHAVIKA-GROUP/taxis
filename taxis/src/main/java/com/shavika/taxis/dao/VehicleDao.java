package com.shavika.taxis.dao;

import java.util.List;

import com.shavika.taxis.api.dao.BaseDao;
import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.exception.ShavikaAppException;

public abstract interface VehicleDao extends BaseDao<Vehicle> {

	public abstract List<Vehicle> getAllVehicle() throws ShavikaAppException;
}
