package cn.yonyong.shiro.mapper;

import cn.yonyong.shiro.pojo.UserRole;
import cn.yonyong.shiro.pojo.UserRoleExample;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface UserRoleMapper {
	int deleteByPrimaryKey(Long id);

	int insert(UserRole record);

	int insertSelective(UserRole record);

	List<UserRole> selectByExample(UserRoleExample example);

	UserRole selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(UserRole record);

	int updateByPrimaryKey(UserRole record);
}