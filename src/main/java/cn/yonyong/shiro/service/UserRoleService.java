package cn.yonyong.shiro.service;

import cn.yonyong.shiro.pojo.User;

public interface UserRoleService {

	public void setRoles(User user, long[] roleIds);

	public void deleteByUser(long userId);

	public void deleteByRole(long roleId);

}