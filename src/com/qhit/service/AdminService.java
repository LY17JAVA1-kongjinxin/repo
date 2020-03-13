package com.qhit.service;

import java.util.List;

import com.qhit.entity.Admin;

public interface AdminService {

	Admin login(String userName, String passWord);

	// 添加
	int addAdmin(Admin ad);

	// 修改
	int updAdmin(Admin ad);

	// 删除
	int delAdmin(int aid);

	// 根据id查询
	Admin findAdminById(int aid);

	// 查询所有
	List<Admin> findAllAdmins();
	
	// 按名称模糊查询
	List<Admin> findAdminByName(String fname);

}
