package com.shavika.taxis.service;

import com.shavika.taxis.api.dto.Trip;
import com.shavika.taxis.api.exception.ShavikaAppException;

public abstract interface TripService {

	public abstract int insertTrip(Trip trip) throws ShavikaAppException;

	public abstract int genrateMail(Trip trip) throws ShavikaAppException;

}
