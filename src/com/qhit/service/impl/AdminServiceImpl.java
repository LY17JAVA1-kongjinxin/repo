package com.qhit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qhit.dao.AdminMapper;
import com.qhit.entity.Admin;
import com.qhit.service.AdminService;

@Service("adminServiceImpl")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper dao;
	
	@Override
	public Admin login(String userName, String passWord) {
		
		return dao.login(userName, passWord);
	}

	@Override
	public int addAdmin(Admin ad) {
		
		return dao.addAdmin(ad);
	}

	@Override
	public int updAdmin(Admin ad) {
		
		return dao.updAdmin(ad);
	}

	@Override
	public int delAdmin(int aid) {
		
		return dao.delAdmin(aid);
	}

	@Override
	public Admin findAdminById(int aid) {
		
		return dao.findAdminById(aid);
	}

	@Override
	public List<Admin> findAllAdmins() {
		
		return dao.findAllAdmins();
	}

	@Override
	public List<Admin> findAdminByName(String fname) {
		return dao.findAdminByName(fname);
	}

}
