package com.shavika.taxis.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.shavika.taxis.api.dao.BaseDaoImpl;
import com.shavika.taxis.api.dto.TravelDetail;
import com.shavika.taxis.api.exception.ShavikaAppException;


@Repository("travelDetailDao")
public class TravelDetailDaoImpl extends BaseDaoImpl<TravelDetail> implements TravelDetailDao {

	@Override
	public List<TravelDetail> getAllTravelDetail() throws ShavikaAppException {
		return findAll(TravelDetail.class);
	}

	@Override
	public TravelDetail insertTravelDetail(TravelDetail travelDetail) throws ShavikaAppException {
		return save(travelDetail);
	}
}