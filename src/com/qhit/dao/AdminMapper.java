package com.qhit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.qhit.entity.Admin;

public interface AdminMapper {

	@Select("select * from tb_admin where aLoginName=#{userName} and aPassWord=#{passWord}")
	Admin login(@Param("userName") String userName, @Param("passWord") String passWord);

	// ���
	@Insert("INSERT INTO tb_admin(aLoginName,aPassWord,aTrueName) VALUES(#{aLoginName},#{aPassWord},#{aTrueName})")
	int addAdmin(Admin ad);

	// �޸�
	@Update("UPDATE tb_admin SET aLoginName=#{aLoginName},aPassWord=#{aPassWord},aTrueName=#{aTrueName} WHERE aid=#{aid}")
	int updAdmin(Admin ad);

	// ɾ��
	@Delete("DELETE FROM tb_admin WHERE aid=#{aid}")
	int delAdmin(int aid);

	// ����id��ѯ
	@Select("SELECT * FROM tb_admin WHERE aid=#{aid}")
	Admin findAdminById(int aid);

	// ��ѯ����
	@Select("SELECT * FROM tb_admin")
	List<Admin> findAllAdmins();
	
	// ������ģ����ѯ
	@Select("SELECT * FROM tb_admin where aLoginName like concat('%',#{fname},'%')")
	List<Admin> findAdminByName(String fname);
}
