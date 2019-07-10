package cn.yonyong.shiro.mapper;

import cn.yonyong.shiro.pojo.RolePermission;
import cn.yonyong.shiro.pojo.RolePermissionExample;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface RolePermissionMapper {
	int deleteByPrimaryKey(Long id);

	int insert(RolePermission record);

	int insertSelective(RolePermission record);

	List<RolePermission> selectByExample(RolePermissionExample example);

	RolePermission selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(RolePermission record);

	int updateByPrimaryKey(RolePermission record);
}