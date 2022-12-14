package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author buding
 */
@Data//自动生成get/set方法
public class SysUser implements Serializable {

    private Long userId;
    private String username;
    private String password;
    private String phone;
    private String email;
    private int status;
    private boolean isAdmin;



}
