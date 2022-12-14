package com.itmk.web.sys_home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author buding
 * 控制器主页
 */
@Controller
@RequestMapping("/home")
public class SysHomeController {
    /**
     * 首页
     */
    @GetMapping("/index")
    public String index(String userType){
       if (userType .equals("1"))//普通用户
       {
           return "common_home";
       }
        return "home";//管理员
    }

    /**
     * 桌面或欢迎页
     */
    @GetMapping("/welcome")
    public String welcome(){
        return "welcome";
    }

    /**
     * 桌面或欢迎页
     */
    @GetMapping("/commonwelcome")
    public String commonwelcome(){
        return "common_welcome";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/box")
    public String box(){
        return "box";
    }


    /**
     * bootstrap弹性盒子
     * @return
     */
    @GetMapping("/bootstrap")
    public String bootstrap(){
        return "bootstrap";
    }
}
