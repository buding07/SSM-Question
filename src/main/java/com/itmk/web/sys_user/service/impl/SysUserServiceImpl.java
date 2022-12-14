package com.itmk.web.sys_user.service.impl;

import com.github.pagehelper.PageHelper;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UserParm;
import com.itmk.web.sys_user.mapper.SysUserMapper;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author buding
 */
@Service
public class SysUserServiceImpl implements SysUserService {

    @Resource
    private SysUserMapper sysUserMapper;

    @Override
    public List<SysUser> getUserList() {
        return sysUserMapper.getUserList();
    }

    @Override
    public boolean addUser(SysUser user) {
        return sysUserMapper.addUser(user);
    }

    @Override
    public SysUser getUserByName(String username) {
        return sysUserMapper.getUserByName(username);
    }

    @Override
    public List<SysUser> getUserTableList(UserParm parm) {
        PageHelper.startPage(parm.getPage(), parm.getLimit());

        return sysUserMapper.getUserTableList(parm);

    }

    @Override
    public SysUser getUserById(Integer userId) {
       return  sysUserMapper.getUserById(userId);
    }

    @Override
    public boolean updateById(SysUser user) {
        return sysUserMapper.updateById(user);
    }

    @Override
    public boolean deleteById(String userId) {
        return sysUserMapper.deleteById(userId);
    }

    @Override
    public SysUser login(SysUser user) {
        return sysUserMapper.login(user);
    }
}
