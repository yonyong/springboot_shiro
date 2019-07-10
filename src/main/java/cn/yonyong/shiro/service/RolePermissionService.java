package cn.yonyong.shiro.service;

import cn.yonyong.shiro.pojo.Role;

public interface RolePermissionService {
	public void setPermissions(Role role, long[] permissionIds);

	public void deleteByRole(long roleId);

	public void deleteByPermission(long permissionId);
}