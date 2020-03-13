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

	// 添加
	@Insert("INSERT INTO tb_admin(aLoginName,aPassWord,aTrueName) VALUES(#{aLoginName},#{aPassWord},#{aTrueName})")
	int addAdmin(Admin ad);

	// 修改
	@Update("UPDATE tb_admin SET aLoginName=#{aLoginName},aPassWord=#{aPassWord},aTrueName=#{aTrueName} WHERE aid=#{aid}")
	int updAdmin(Admin ad);

	// 删除
	@Delete("DELETE FROM tb_admin WHERE aid=#{aid}")
	int delAdmin(int aid);

	// 根据id查询
	@Select("SELECT * FROM tb_admin WHERE aid=#{aid}")
	Admin findAdminById(int aid);

	// 查询所有
	@Select("SELECT * FROM tb_admin")
	List<Admin> findAllAdmins();
	
	// 按名称模糊查询
	@Select("SELECT * FROM tb_admin where aLoginName like concat('%',#{fname},'%')")
	List<Admin> findAdminByName(String fname);
}
