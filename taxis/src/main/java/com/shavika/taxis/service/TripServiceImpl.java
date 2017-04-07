package com.shavika.taxis.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Maps;
import com.shavika.taxis.api.dto.Passanger;
import com.shavika.taxis.api.dto.TravelDetail;
import com.shavika.taxis.api.dto.Trip;
import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.exception.ShavikaAppException;
import com.shavika.taxis.dao.PassangerDao;
import com.shavika.taxis.dao.TravelDetailDao;
import com.shavika.taxis.dao.VehicleDao;
import com.shavika.taxis.util.DateTimeUtil;

@Service("tripServiceService")
public class TripServiceImpl implements TripService {

	@Autowired
	private TravelDetailDao travelDetailDao;

	@Autowired
	private PassangerDao passangerDao;

	@Autowired
	private VehicleDao vehicleDao;

	@Transactional(readOnly = true)
	@Override
	public int insertTrip(Trip trip) throws ShavikaAppException {

		List<Vehicle> vehicleList = vehicleDao.getAllVehicle();
		Map<Long, Vehicle> vehicleMap = new HashMap<Long, Vehicle>();
		for (Vehicle vehicle : vehicleList)
			vehicleMap.put(vehicle.getId(), vehicle);

		Passanger passanger = trip.getPassanger();
		passanger.setCreated_on(DateTimeUtil.getMillis());
		passanger.setModified_on(DateTimeUtil.getMillis());
		passangerDao.insertPassenger(passanger);

		TravelDetail travelDetail = trip.getTravelDetail();
		travelDetail.setCreated_on(DateTimeUtil.getMillis());
		travelDetail.setModified_on(DateTimeUtil.getMillis());
		travelDetail.setStatus("updated");
		double tfrae = vehicleMap.get(travelDetail.getVehicle_id()).getRegular_fare()
				* travelDetail.getTravel_distance();
		travelDetail.setTravel_fare(tfrae);

		travelDetailDao.insertTravelDetail(travelDetail);
		return 1;
	}

	@Transactional(readOnly = true)
	@Override
	public int genrateMail(Trip trip) throws ShavikaAppException {
		try {
			return new MailService(trip).sendMail();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
