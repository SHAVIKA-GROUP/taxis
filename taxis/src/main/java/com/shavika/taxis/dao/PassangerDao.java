package com.shavika.taxis.dao;

import java.util.List;

import com.shavika.taxis.api.dao.BaseDao;
import com.shavika.taxis.api.dto.Passanger;
import com.shavika.taxis.api.exception.ShavikaAppException;

public abstract interface PassangerDao extends BaseDao<Passanger> {

	public abstract List<Passanger> getAllPassanger() throws ShavikaAppException;

	public abstract Passanger insertPassenger(Passanger passanger) throws ShavikaAppException;
}
