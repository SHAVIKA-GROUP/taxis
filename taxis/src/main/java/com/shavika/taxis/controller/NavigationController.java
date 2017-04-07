package com.shavika.taxis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import com.shavika.taxis.api.dto.Trip;
import com.shavika.taxis.api.exception.ShavikaAppException;
import com.shavika.taxis.service.TripService;

@Controller
public class NavigationController {

	@Autowired
	TripService tripService;

	@RequestMapping(value = "/tripservice", method = RequestMethod.POST)
	public ResponseEntity<Trip> createMenu(@RequestBody Trip trip, HttpServletRequest req, HttpServletResponse res,
			HttpSession session, UriComponentsBuilder ucBuilder) throws ShavikaAppException {
		System.out.println("============= [tripservice] CREATE...");
		System.out.println("TRIP==>" + trip);
		tripService.insertTrip(trip);
		tripService.genrateMail(trip);
		return new ResponseEntity<Trip>(trip, HttpStatus.CREATED);
	}

	/*
	 * @RequestMapping(value = "/tripservice", method = RequestMethod.POST)
	 * public ModelAndView tripService(@RequestBody Trip trip,
	 * HttpServletRequest req, HttpServletResponse res, HttpSession session,
	 * UriComponentsBuilder ucBuilder) throws ShavikaAppException { ModelAndView
	 * model = new ModelAndView();
	 * System.out.println("============= SRPING/tripService...");
	 * System.out.println("============= TRIP=" + trip);
	 * System.out.println("=================== /protected/index");
	 * model.setViewName("protected/email-comfirmed"); return model; }
	 */
}
