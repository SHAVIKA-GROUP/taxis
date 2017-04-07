package com.shavika.taxis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.shavika.taxis.api.dto.Vehicle;
import com.shavika.taxis.api.dto.VehicleSync;
import com.shavika.taxis.api.exception.ShavikaAppException;
import com.shavika.taxis.service.VehicleService;

@RestController
public class UISyncController {

	@Autowired
	private VehicleService vehicleService;

	@RequestMapping(value = "/vehicleTypeService123", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<VehicleSync> listAllMenus() throws ShavikaAppException {
		System.out.println("============= [menuservice]GET All...");
		VehicleSync vehicleSync = vehicleService.getAllVehicleSync();
		System.out.println("============= GET HatchBack... size=" + vehicleSync.getHatchBackVehicle().size());
		System.out.println("============= GET Seden... size=" + vehicleSync.getSedanVehicle().size());
		System.out.println("============= GET SUV... size=" + vehicleSync.getSuvVehicle().size());
		if (null == vehicleSync)
			return new ResponseEntity<VehicleSync>(HttpStatus.NO_CONTENT);
		System.out.println("============= GET All... vehicleSync");
		return new ResponseEntity<VehicleSync>(vehicleSync, HttpStatus.OK);
	}

	@RequestMapping(value = "/vehicleTypeService", method = RequestMethod.GET)
	public ResponseEntity<List<Vehicle>> listAllVehicle() throws ShavikaAppException {
		System.out.println("============= [menuservice]GET All...");
		List<Vehicle> vehicleList = vehicleService.getAllVehicle();
		System.out.println("============= GET SUV... size=" + vehicleList.size());
		if (null == vehicleList)
			return new ResponseEntity<List<Vehicle>>(HttpStatus.NO_CONTENT);
		return new ResponseEntity<List<Vehicle>>(vehicleList, HttpStatus.OK);
	}

}
