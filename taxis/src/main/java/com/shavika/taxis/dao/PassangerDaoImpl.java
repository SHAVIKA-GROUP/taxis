package com.shavika.taxis.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.shavika.taxis.api.dao.BaseDaoImpl;
import com.shavika.taxis.api.dto.Passanger;
import com.shavika.taxis.api.exception.ShavikaAppException;

@Repository("passangerDao")
public class PassangerDaoImpl extends BaseDaoImpl<Passanger> implements PassangerDao {

	@Override
	public List<Passanger> getAllPassanger() throws ShavikaAppException {
		return findAll(Passanger.class);
	}

	@Override
	public Passanger insertPassenger(Passanger passanger) throws ShavikaAppException {
		return save(passanger);
	}
}