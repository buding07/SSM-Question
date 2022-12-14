package com.itmk.web.sys_user.controller;

import com.github.pagehelper.PageInfo;
import com.google.code.kaptcha.Constants;
import com.itmk.common.ResultMap;
import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.common.StatusCode;
import com.itmk.web.sys_user.entity.LoginParm;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UpdatePasswordParm;
import com.itmk.web.sys_user.entity.UserParm;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author buding
 * 系统用户控制器
 */
@Controller
@RequestMapping("/api/sysUser")
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;

    /**
     * 获取全部用户
     */
    @GetMapping("/getUserList")
    @ResponseBody
    public ResultVo getUserList(){
        List<SysUser> userList = sysUserService.getUserList();

        ResultVo vo = new ResultVo("查询成功！",200,userList);
  /*      vo.setMsg("查询成功！");
        vo.setCode(200);
        vo.setData(userList);*/
//        return vo;
        return ResultUtils.success("查询成功",userList);
    }

    /**
     * 用户管理
     */
    @GetMapping("/index")
    public String index(){
        return "system/user/user";
    }


    /**
     * 新增用户页面
     */
    @GetMapping("/addUI")
    public String add(){
        return "system/user/add";
    }


    /**
     * 新增用户
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultVo add(SysUser sysUser){

        //验证参数是否为空
        if (StringUtils.isEmpty(sysUser.getUsername()) || StringUtils.isEmpty(sysUser.getPassword())){
            return ResultUtils.error("参数不能为空！");
        }

        //根据用户查询该用户是否被占用
        SysUser user = sysUserService.getUserByName(sysUser.getUsername());
        if (user!=null){
            return ResultUtils.error("该账户已经被占用！");
        }
        boolean save = sysUserService.addUser(sysUser);
        if (save){
            return ResultUtils.success("添加成功！");
        }
        return ResultUtils.error("新增用户失败！");
    }

    /**
     * 获取列表
     */
    @GetMapping("/list")
    @ResponseBody
    public ResultMap list(UserParm parm){
        List<SysUser> list = sysUserService.getUserTableList(parm);
        PageInfo<SysUser> page = new PageInfo<>(list);
        return ResultUtils.pageResult(StatusCode.SUCCESS_LAYUI_CODE,"查询成功",page.getList(),page.getTotal());
    }


    /**
     * 编辑用户页面
     */

    @GetMapping("/editUI")
    public String editUI(Integer userId, ModelMap map){
//        int a =1;
        SysUser user = sysUserService.getUserById(userId);
        map.put("user",user);
        return "system/user/edit";
    }

    /**
     * 修改密码
     */
    @GetMapping("/editPassword")
    public String editPassword(){

        return "system/user/editPassword";
    }

    /**
     * 修改密码
     */
    @PostMapping("updatePassword")
    @ResponseBody
    public ResultVo updatePassword(UpdatePasswordParm sysUser){

        //查询数据库和前端传来的旧密码相等？
        //验证账号是否被占用
        SysUser user = sysUserService.getUserById(sysUser.getUserId());
        if (!sysUser.getOldPassword().equals(user.getPassword())){
            return ResultUtils.error("旧密码不正确！");
        }
        SysUser user1 = new SysUser();
        user1.setUserId(user.getUserId());
        user1.setPassword(sysUser.getPassword());
        //更新
        boolean b = sysUserService.updateById(user1);
        if (b){
            return ResultUtils.success("修改成功！");
        }
        return ResultUtils.error("修改失败！");
    }



    /**
     * 编辑用户保存
     */
    @PostMapping("update")
    @ResponseBody
    public ResultVo edit(SysUser sysUser){
        //验证账号是否被占用
        SysUser user = sysUserService.getUserByName(sysUser.getUsername());
        if (user!=null && !user.getUserId().equals(sysUser.getUserId())){
            return ResultUtils.error("该账户已经被占用！");
        }
        boolean b = sysUserService.updateById(sysUser);
        if (b){
            return ResultUtils.success("编辑成功！");
        }
        return ResultUtils.error("编辑失败！");
    }

    /**
     * 删除用户
     */
    @PostMapping("/delete")
    @ResponseBody
    public ResultVo delete(String userId){
        boolean b = sysUserService.deleteById(userId);
        if (b){
            return ResultUtils.success("删除成功！");
        }
        return ResultUtils.error("删除失败！");
    }

    /**
     * 用户管理
     */
    @GetMapping("/register")
    public String register(){
        return "system/user/regeister";
    }


    /**
     * 用户注册页面
     */
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    /**
     * zhuce
     */
    @PostMapping("/registerCommit")
    @ResponseBody
    public ResultVo registerCommit(LoginParm loginParm, HttpServletRequest request){
        //验证码是否正确
        HttpSession session = request.getSession();
        String code = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if (!loginParm.getCode().equals(code)){
            return ResultUtils.error("验证码不正确！");
        }
        SysUser user = sysUserService.getUserByName(loginParm.getUsername());
        if (user != null){
            return ResultUtils.error("该用户已经被注册！");
        }
        SysUser sysUser = new SysUser();
        sysUser.setStatus(1);
        BeanUtils.copyProperties(loginParm,sysUser);
        boolean b = sysUserService.addUser(sysUser);
        if (b){
            return ResultUtils.success("注册成功！");
        }
        return ResultUtils.success("注册失败！");

    }

    /**
     * 用户登录
     */
    @PostMapping("loginCommit")
    @ResponseBody
    public ResultVo loginCommit(LoginParm loginParm,HttpServletRequest request){
        //获取session
        //验证码是否正确
        HttpSession session = request.getSession();
        String code = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if (!loginParm.getCode().equals(code)){
            return ResultUtils.error("验证码不正确！");
        }
        //查询数据库账户是否存在
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(loginParm,sysUser);
        SysUser user = sysUserService.login(sysUser);
        if (user == null){
            return ResultUtils.error("用户名或验证码不正确！");
        }
        session.setAttribute("user",user);
        return ResultUtils.success("登录成功！",user.getUserId());
    }

}
