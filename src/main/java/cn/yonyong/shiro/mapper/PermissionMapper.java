package cn.yonyong.shiro.mapper;

import cn.yonyong.shiro.pojo.Permission;
import cn.yonyong.shiro.pojo.PermissionExample;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface PermissionMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Permission record);

	int insertSelective(Permission record);

	List<Permission> selectByExample(PermissionExample example);

	Permission selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Permission record);

	int updateByPrimaryKey(Permission record);
}