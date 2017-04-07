package com.shavika.taxis.dao;

import java.util.List;

import com.shavika.taxis.api.dao.BaseDao;
import com.shavika.taxis.api.dto.TravelDetail;
import com.shavika.taxis.api.exception.ShavikaAppException;

public abstract interface TravelDetailDao extends BaseDao<TravelDetail> {

	public abstract List<TravelDetail> getAllTravelDetail() throws ShavikaAppException;

	public abstract TravelDetail insertTravelDetail(TravelDetail travelDetail) throws ShavikaAppException;
}
