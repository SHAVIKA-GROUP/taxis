package com.shavika.taxis.api.dto;

import java.io.Serializable;

public class Trip implements Serializable {

	private TravelDetail travelDetail;
	private Passanger passanger;

	public Trip() {
		super();
	}

	public Trip(TravelDetail travelDetail, Passanger passanger) {
		super();
		this.travelDetail = travelDetail;
		this.passanger = passanger;
	}

	public TravelDetail getTravelDetail() {
		return travelDetail;
	}

	public void setTravelDetail(TravelDetail travelDetail) {
		this.travelDetail = travelDetail;
	}

	public Passanger getPassanger() {
		return passanger;
	}

	public void setPassanger(Passanger passanger) {
		this.passanger = passanger;
	}

	@Override
	public String toString() {
		return "Trip [travelDetail=" + travelDetail + ", passanger=" + passanger + "]";
	}
}
