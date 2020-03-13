package com.qhit.service;

import java.util.List;

import com.qhit.entity.Admin;

public interface AdminService {

	Admin login(String userName, String passWord);

	// ���
	int addAdmin(Admin ad);

	// �޸�
	int updAdmin(Admin ad);

	// ɾ��
	int delAdmin(int aid);

	// ����id��ѯ
	Admin findAdminById(int aid);

	// ��ѯ����
	List<Admin> findAllAdmins();
	
	// ������ģ����ѯ
	List<Admin> findAdminByName(String fname);

}
