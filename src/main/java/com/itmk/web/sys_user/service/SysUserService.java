package com.itmk.web.sys_user.service;

import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UserParm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author buding
 */
public interface SysUserService {

    //查询所有用户
    List<SysUser> getUserList();

    boolean addUser(SysUser user);

    //根据用户名查询是否被占用
    SysUser getUserByName(String username);

    //分页查询用户列表
    List<SysUser>  getUserTableList(UserParm parm);

    //根据id查询用户
    SysUser getUserById (Integer userId );

    //更新用户
    boolean updateById(SysUser user);

    //删除用户
    boolean deleteById(String userId);

    SysUser login(SysUser user);

}
