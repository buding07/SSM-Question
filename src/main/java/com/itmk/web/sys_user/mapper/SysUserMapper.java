package com.itmk.web.sys_user.mapper;

import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UserParm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author buding
 */
public interface SysUserMapper {
    //查询所有用户
    List<SysUser> getUserList();

    //新增用户
    boolean addUser(@Param("user") SysUser user);

    //根据用户名查询是否被占用
    SysUser getUserByName(@Param("username") String username);

    //查询用户列表
    List<SysUser> getUserTableList(@Param("parm") UserParm parm);

    //根据id查询用户
    SysUser getUserById (@Param("userId")Integer userId );

    //更新用户
    boolean updateById(@Param("user") SysUser user);

    //删除用户
    boolean deleteById(@Param("userId") String userId);

    //根据用户名和密码查询
    SysUser login(@Param("user") SysUser user);
}
